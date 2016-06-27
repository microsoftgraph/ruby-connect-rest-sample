###
#  Copyright (c) Microsoft. All rights reserved. Licensed under the MIT license.
#  See LICENSE in the project root for license information.
##

# The following values must match the client ID, key, and reply URL
# in your Azure application.
ENV['CLIENT_ID'] = 'bf90f160-c35a-44cb-93b9-6e991d4f5fd6'
ENV['CLIENT_SECRET'] = 'PuA4FrZAor9nIn4y3ZOv4I4e0A+tG2I1E/AAHUNZG8o='
ENV['TENANT'] = 'kikimax.onmicrosoft.com'
ENV['REPLY_URL'] = 'http://localhost:3000/auth/azureactivedirectory/callback'

ENV['LOGOUT_ENDPOINT'] = 'https://login.microsoftonline.com/common/oauth2/logout'

# Load the Rails application.
require File.expand_path('../application', __FILE__)

ADAL::Logging.log_level = ADAL::Logger::VERBOSE

Rails.logger = Logger.new(STDOUT)

# Initialize the Rails application.
Rails.application.initialize!
