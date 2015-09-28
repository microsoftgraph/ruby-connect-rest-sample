class PagesController < ApplicationController
  def index
  end
  
  def login
    redirect_to "/auth/azureactivedirectory"
  end
end
