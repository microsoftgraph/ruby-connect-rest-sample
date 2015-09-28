# You may want to specify these keys separately for production and test
# environments.
ENV['CLIENT_ID'] = '748ba382-f304-49f6-94d1-bfca33668f78'
ENV['CLIENT_SECRET'] = 'RrMy6FTud+m9DgjRGhKN9kssm1zcjHlRrI6sMWxMez0='
ENV['TENANT'] = 'patsoldemo6.onmicrosoft.com'

# Load the Rails application.
require File.expand_path('../application', __FILE__)

ADAL::Logging.log_level = ADAL::Logger::VERBOSE

# Initialize the Rails application.
Rails.application.initialize!
