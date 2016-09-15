###
#  Copyright (c) Microsoft. All rights reserved. Licensed under the MIT license.
#  See LICENSE in the project root for license information.
##

# The controller manages the interaction of the pages with
# the v2 authentication endpoint and the Microsoft Graph
# To see how to get tokens for your app look at login and callback
# To see how to send an email using the graph.microsoft.com
# endpoint see send_mail
# To see how to get rid of the tokens and finish the session
# in your app, see disconnect

class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  # Specifies endpoint for connecting to the Microsoft Graph
  GRAPH_RESOURCE = 'https://graph.microsoft.com'
  SENDMAIL_ENDPOINT = '/v1.0/me/microsoft.graph.sendmail'
  CONTENT_TYPE = 'application/json;odata.metadata=minimal;odata.streaming=true'

  # Delegates the browser to the v2 authentication OmniAuth module
  # which takes the user to a sign-in page, if we don't have tokens already
  def login
    redirect_to '/auth/microsoft_v2_auth'
  end

  # If the user had to sign-in, the browser will redirect to this callback
  # with the authorization tokens attached

  def callback
    # # Access the authentication hash for omniauth
    # # and extract the auth token, user name, and email
    # data = request.env['omniauth.auth']
    # token = data['credentials']['token']
    #
    # @email = data[:extra][:raw_info][:userPrincipalName]
    # @name = data[:extra][:raw_info][:displayName]
    #
    # # Associate token/user values to the session
    # session[:access_token] = data['credentials']['token']
    # session[:name] = @name
    # session[:email] = @email
    #
    # # Debug logging
    # logger.info "Name: #{@name}"
    # logger.info "Email: #{@email}"
    # logger.info "[callback] - Access token: #{session[:access_token]}"
  end

  def auth_hash
    request.env['omniauth.auth']
  end

  # Sends an authenticated request to the sendmail endpoint in
  # graph.microsoft.com
  # Stuff to consider:
  # - The email message is attached to the body of the request
  # - The access token must be appended to the authorization initheader
  # - Content type must be at least application/json
  # rubocop:disable Metrics/AbcSize
  def send_mail
    # logger.debug "[send_mail] - Access token: #{session[:access_token]}"
    #
    # # Used in the template
    # @name = session[:name]
    # @email = params[:specified_email]
    # @recipient = params[:specified_email]
    # @mail_sent = false
    #
    # send_mail_endpoint = URI("#{GRAPH_RESOURCE}#{SENDMAIL_ENDPOINT}")
    # content_type = CONTENT_TYPE
    # http = Net::HTTP.new(send_mail_endpoint.host, send_mail_endpoint.port)
    # http.use_ssl = true
    #
    # # If you want to use a sniffer tool, like Fiddler, to see the request
    # # you might need to add this line to tell the engine not to verify the
    # # certificate or you might see a "certificate verify failed" error
    # # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    #
    # email_body = File.read('app/assets/MailTemplate.html')
    # email_body.sub! '{given_name}', @name
    # email_subject = t('email_subject')
    #
    # logger.debug email_body
    #
    # email_message = "{
    #         Message: {
    #         Subject: '#{email_subject}',
    #         Body: {
    #             ContentType: 'HTML',
    #             Content: '#{email_body}'
    #         },
    #         ToRecipients: [
    #             {
    #                 EmailAddress: {
    #                     Address: '#{@recipient}'
    #                 }
    #             }
    #         ]
    #         },
    #         SaveToSentItems: true
    #         }"
    #
    # response = http.post(
    #   SENDMAIL_ENDPOINT,
    #   email_message,
    #   'Authorization' => "Bearer #{session[:access_token]}",
    #   'Content-Type' => content_type
    # )
    #
    # logger.debug "Code: #{response.code}"
    # logger.debug "Message: #{response.message}"
    #
    # # The send mail endpoint returns a 202 - Accepted code on success
    # if response.code == '202'
    #   @mail_sent = true
    # else
    #   @mail_sent = false
    #   flash[:httpError] = "#{response.code} - #{response.message}"
    # end
    #
    # render 'callback'
  end
  # rubocop:enable Metrics/AbcSize

  # Deletes the local session and redirects to root
  # the v2 endpoint doesn't currently support a logout endpoint
  # so we can't call it for a v2 logout flow
  def disconnect
    reset_session
    logger.info 'LOGOUT'
    redirect_to '/'
  end
end
