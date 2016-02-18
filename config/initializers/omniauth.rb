Rails.application.config.middleware.use OmniAuth::Builder do
  if ENV['TENANT'].include? '.'
    tenant = ENV['TENANT']
  else
    tenant = ENV['TENANT'] + '.onmicrosoft.com'
  end
  provider :azure_activedirectory,
           ENV['CLIENT_ID'],
           tenant
end
