###
 #  Copyright (c) Microsoft. All rights reserved. Licensed under the MIT license.
 #  See full license at the bottom of this file.
 ##
 
 class PagesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  AUTH_CTX = ADAL::AuthenticationContext.new(
    'login.windows.net', ENV['TENANT'])
  CLIENT_CRED = ADAL::ClientCredential.new(ENV['CLIENT_ID'], ENV['CLIENT_SECRET'])
  GRAPH_RESOURCE = 'https://graph.microsoft.com'
  
  def login
    redirect_to "/auth/azureactivedirectory"
  end
  
  def authd
    # Authentication redirects here
    code = params[:code]
    
    # Used in the template
    @name = auth_hash.info.name
    @email = auth_hash.info.email
    
    # Request an access token
    result = acquire_auth_token(code, ENV['REPLY_URL'])
    
    # Associate this token to our user's session
    session[:access_token] = result.access_token
    # name -> session
    session[:name] = @name
    # email -> session
    session[:email] = @email
    
    # Debug logging
    puts "Code: #{code}"
    puts "Name: #{@name}"
    puts "Email: #{@email}"
    puts "[authd] - Access token: #{session[:access_token]}"
  end
  
  def send_mail
    puts "[send_mail] - Access token: #{session[:access_token]}"
    
    # Used in the template
    @name = session[:name]
    @email = params[:specified_email]
    @recipient = params[:specified_email]
    @mailSent = false
    
    sendMailEndpoint = URI("https://graph.microsoft.com/beta/me/sendmail")
    contentType = "application/json;odata.metadata=minimal;odata.streaming=true"
    http = Net::HTTP.new(sendMailEndpoint.host, sendMailEndpoint.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    emailBody = File.read("app/assets/MailTemplate.html")
    emailBody.sub! "{given_name}", @name
    
    puts emailBody
    
    emailMessage = "{
            Message: {
            Subject: 'Welcome to Office 365 development with Ruby',
            Body: {
                ContentType: 'HTML',
                Content: '#{emailBody}'
            },
            ToRecipients: [
                {
                    EmailAddress: {
                        Address: '#{@recipient}'
                    }
                }
            ]
            },
            SaveToSentItems: true
            }"

    response = http.post(
      "/beta/me/sendmail", 
      emailMessage, 
      initheader = 
      {
        "Authorization" => "Bearer #{session[:access_token]}", 
        "Content-Type" => contentType
      }
    )
    
    puts "Code: #{response.code}"
    puts "Message: #{response.message}"

    if response.code == "202"
      #message was accepted
      @mailSent = true
    else
      @mailSent = false
      flash[:httpError] = "#{response.code} - #{response.message}"
    end
    
    render "authd"
    
  end

  def auth_hash
    request.env['omniauth.auth']
  end
  
  def acquire_auth_token(auth_code, reply_url)
    AUTH_CTX.acquire_token_with_authorization_code(
                  auth_code,
                  reply_url,
                  CLIENT_CRED,
                  GRAPH_RESOURCE)
  end
  
  def disconnect
    reset_session
    redirect = "#{ENV['LOGOUT_ENDPOINT']}?post_logout_redirect_uri=#{ERB::Util.url_encode(root_url)}"
    puts "REDIRECT: " + redirect
    redirect_to redirect
  end
  
end

#############################################################
##
## O365-Ruby-Unified-API-Connect, https://github.com/OfficeDev/O365-Ruby-Unified-API-Connect
##
## Copyright (c) Microsoft Corporation
## All rights reserved.
##
## MIT License:
## Permission is hereby granted, free of charge, to any person obtaining
## a copy of this software and associated documentation files (the
## "Software"), to deal in the Software without restriction, including
## without limitation the rights to use, copy, modify, merge, publish,
## distribute, sublicense, and/or sell copies of the Software, and to
## permit persons to whom the Software is furnished to do so, subject to
## the following conditions:
##
## The above copyright notice and this permission notice shall be
## included in all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
## EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
## MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
## NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
## LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
## OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
## WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
##
#############################################################