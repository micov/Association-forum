# Load the rails application
require File.expand_path('../application', __FILE__)


# Initialize the rails application
AssociationForum::Application.initialize!

#Cas-client configuration
CASClient::Frameworks::Rails::Filter.configure(
:cas_base_url => "https://login.liu.se/cas/",

:login_url     => "https://login.liu.se/cas/login",
:logout_url    => "https://login.liu.se/cas/logout",
:validate_url  => "https://login.liu.se/cas/serviceValidate",
:username_session_key => :cas_user,
:extra_attributes_session_key => :cas_extra_attributes,
:enable_single_sign_out => true
)

