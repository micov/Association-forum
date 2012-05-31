class SessionsController < ActionController::Base

  #Before a new session is started the CAS configurations is loaded
  before_filter CASClient::Frameworks::Rails::GatewayFilter 
  before_filter CASClient::Frameworks::Rails::Filter 

  def new
    CASClient::Frameworks::Rails::Filter.login_url(self)
    user = session[:cas_user]        
    #Helper method for signing in
    sign_in user  
    redirect_to root_path, notice: "Logged in" 
  end

  def destroy
    reset_session
    CASClient::Frameworks::Rails::Filter::logout(self)
  end
end