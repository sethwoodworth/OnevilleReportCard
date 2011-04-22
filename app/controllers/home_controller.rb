class HomeController < ApplicationController 
  def index
    if signed_in?
      redirect_to general_path
    end
  end
end
