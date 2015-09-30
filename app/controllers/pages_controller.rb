class PagesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
  end
  
  def login
    redirect_to "/auth/azureactivedirectory"
  end
  
  def authd
    # Authentication redirects here
    code = params[:code]
    puts "Code: #{code}"
    
    @name = auth_hash.info.name
    @email = auth_hash.info.email

    puts "Name: #{@name}"
    puts "Email: #{@email}"

    # So, do I need to request an access token, or can ADAL?
    ##
    # Take a look at https://github.com/AzureAD/omniauth-azure-activedirectory/blob/21df1d4ba6f6557714164d537e62635993faa335/examples/rails-todo-list-app/app/models/user.rb
    # since it looks like it handles the requesting of tokens and such
  end

  def auth_hash
    request.env['omniauth.auth']
  end
end
