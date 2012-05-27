class SessionsController < ActionController::Base
require 'casclient'
require 'casclient/frameworks/rails/filter'

before_filter CASClient::Frameworks::Rails::GatewayFilter #, :only => :index
before_filter CASClient::Frameworks::Rails::Filter #, :except => [ :unprotected_action, :another_unprotected_action ]

  def new
    CASClient::Frameworks::Rails::Filter.login_url(self)
    current_user = session[:cas_user]   
    redirect_to root_path, notice: "Logged in" 
  end

  def destroy
    reset_user
    CASClient::Frameworks::Rails::Filter::logout(self)
  end
end