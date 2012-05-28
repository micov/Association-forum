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
cas_base_url: "https://login.liu.se/cas/",

#not good, better to make a non-persistent session instead.  
:authenticate_on_every_request => true
#:enable_single_sign_out => true
)
