Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # You can have the root of your site routed with "root"
  root 'pages#index'
  get '/login', to: 'pages#login'

  # This is where we are redirected if OmniAuth successfully authenticates
  # the user.
  match '/auth/:provider/callback', to: 'pages#callback', via: %i[get post]

  match '/send_mail', to: 'pages#send_mail', via: %i[post]

  match '/disconnect', to: 'pages#disconnect', via: %i[get]
end
