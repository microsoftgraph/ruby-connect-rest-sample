Rails.application.config.middleware.use OmniAuth::Builder do
  # Pass the id of the 'common' tenant (ed46058a-1957-405e-8d5a-fae110f41cb8)
  provider :azure_activedirectory,
           ENV['CLIENT_ID'],
           'ed46058a-1957-405e-8d5a-fae110f41cb8'
end
