class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  #Hanle exception when trying to access "forbidden" functionality
  rescue_from CanCan::AccessDenied do |exception|      
    flash[:error] = "Access denied!"
    redirect_to root_url
  end
end