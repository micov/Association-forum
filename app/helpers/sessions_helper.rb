module SessionsHelper

  #A setter for the current user 
  def current_user= (user)
    @current_user = user
  end

  #Assigns the current_user to the user from the sessionsController
  def sign_in (user)
    current_user = user
  end

  #Check if the user is signed in
  def signed_in?
    !current_user.nil?
  end

  #A getter for the current user and if not defined already assignes it to the session_user
  def current_user
    @current_user ||= session[:cas_user] #User.where(liu_id: session[:cas_user])  
  end
end