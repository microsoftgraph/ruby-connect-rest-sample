###
 #  Copyright (c) Microsoft. All rights reserved. Licensed under the MIT license.
 #  See full license at the bottom of this file.
 ##
 
ENV['CLIENT_ID'] = '748ba382-f304-49f6-94d1-bfca33668f78'
ENV['CLIENT_SECRET'] = 'RrMy6FTud+m9DgjRGhKN9kssm1zcjHlRrI6sMWxMez0='
ENV['TENANT'] = 'patsoldemo6.onmicrosoft.com'
ENV['REPLY_URL'] = 'http://localhost:9292/auth/azureactivedirectory/callback'

ENV['LOGOUT_ENDPOINT'] = 'https://login.microsoftonline.com/common/oauth2/logout'

# ENV['HTTP_PROXY'] = 'https://10.120.3.110:8888'

# Load the Rails application.
require File.expand_path('../application', __FILE__)

ADAL::Logging.log_level = ADAL::Logger::VERBOSE

# Initialize the Rails application.
Rails.application.initialize!

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