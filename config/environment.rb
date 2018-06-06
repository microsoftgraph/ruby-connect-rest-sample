# Load the Rails application.
require_relative 'application'

# The following values must match the client ID, secret, and reply URL
# in your Microsoft App Registration Portal entry for your app.
ENV['CLIENT_ID'] = 'ENTER_YOUR_CLIENT_ID'
ENV['CLIENT_SECRET'] = 'ENTER_YOUR_SECRET'
ENV['OAUTH_SCOPE'] =
  'openid ' \
  'email ' \
  'profile ' \
  'User.Read ' \
  'Mail.Send'

# Initialize the Rails application.
Rails.application.initialize!
