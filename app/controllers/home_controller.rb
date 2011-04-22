class HomeController < ApplicationController 
  def index
    if signed_in?
      redirect_to intro_path
    end
  end
end
