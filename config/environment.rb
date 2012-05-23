# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
AssociationForum::Application.initialize!

# enable detailed CAS logging
cas_logger = CASClient::Logger.new(::Rails.root+'log/cas.log')
cas_logger.level = Logger::DEBUG

require 'casclient'
require 'casclient/frameworks/rails/filter'

#Cas-client configuration
CASClient::Frameworks::Rails::Filter.configure(
:cas_base_url => "https://login.liu.se/cas/",
:login_url     => "https://login.liu.se/cas/login",
:logout_url    => "https://login.liu.se/cas/logout",
:validate_url  => "https://login.liu.se/cas/serviceValidate",
:username_session_key => :cas_user,
:extra_attributes_session_key => :cas_extra_attributes,
:logger => cas_logger,
:authenticate_on_every_request => true
)

