class ExampleController < ActionController::Base
require 'casclient'
require 'casclient/frameworks/rails/filter'

before_filter CASClient::Frameworks::Rails::GatewayFilter, :only => :index
before_filter CASClient::Frameworks::Rails::Filter, :except => [ :index ]


  def start
    @username = session[:cas_user]   
    @login_url = CASClient::Frameworks::Rails::Filter.login_url(self)
  end

  def my_account
    @username = session[:cas_user]
    # Additional user attributes are available if your
    # CAS server is configured to provide them.
    # See http://code.google.com/p/rubycas-server/wiki/HowToSendExtraUserAttributes
    @extra_attributes = session[:cas_extra_attributes]
  end

  def logout
    CASClient::Frameworks::Rails::Filter.logout(self, 'http://localhost:3000/users')
  end

end