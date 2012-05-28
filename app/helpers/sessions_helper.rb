module SessionsHelper
end

def current_user= (user)
  @current_user = user
end

def sign_in (user)
current_user = user
end

def signed_in?
  !current_user.nil?
end
 
def current_user
  @current_user ||= session[:cas_user] #User.where(liu_id: session[:cas_user])  
end