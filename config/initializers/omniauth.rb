Rails.application.config.middleware.use OmniAuth::Builder do
  tenant = if ENV['TENANT'].include? '.' then ENV['TENANT'] else ENV['TENANT'] + '.onmicrosoft.com' end
  provider :azure_activedirectory,
           ENV['CLIENT_ID'],
           tenant
end
