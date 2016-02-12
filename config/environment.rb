###
#  Copyright (c) Microsoft. All rights reserved. Licensed under the MIT license.
#  See LICENSE in the project root for license information.
##

# The following values must match the client ID, key, and reply URL
# in your Azure application.
ENV['CLIENT_ID'] = 'ENTER_YOUR_CLIENT_ID'
ENV['CLIENT_SECRET'] = 'ENTER_YOUR_SECRET'
ENV['DOMAIN'] = 'ENTER_YOUR_DOMAIN'
ENV['REPLY_URL'] = 'http://localhost:3000/auth/azureactivedirectory/callback'

ENV['LOGOUT_ENDPOINT'] = 'https://login.microsoftonline.com/common/oauth2/logout'

# Load the Rails application.
require File.expand_path('../application', __FILE__)

ADAL::Logging.log_level = ADAL::Logger::VERBOSE

Rails.logger = Logger.new(STDOUT)

# Initialize the Rails application.
Rails.application.initialize!
