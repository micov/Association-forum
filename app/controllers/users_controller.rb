class UsersController < ApplicationController
  #Atomcaticly loads the advert in question through RESTful design and authorizes the user for the
  #different actions
  load_and_authorize_resource
  
  #Unimplemented 
  def create
  end

end
