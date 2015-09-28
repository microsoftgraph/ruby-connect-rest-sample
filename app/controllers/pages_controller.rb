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
    
    # So, do I need to request an access token, or can ADAL?
  end
end
