class UsersController < ApplicationController
  load_and_authorize_resource
  
  def create
    @user = User.new(params[:association])
    if @user.save
      flash[:success] = "The association has been created!"
      #redirect_to @association
    else
      render 'new'
    end
  end

end
