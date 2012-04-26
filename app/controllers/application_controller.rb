class ApplicationController < ActionController::Base
  protect_from_forgery
  
  require 'casclient'
  require 'casclient/frameworks/rails/filter'
  
  before_filter :authorize, :except => [ :index ]
  
  def authorize
  CASClient::Frameworks::Rails::Filter 
  @user = session[:cas_user]
  #flash[:username_session_key],
  #flash[:username_session_key]
end

end
