class AssociationsController < ApplicationController
  def new
  end

  def show
    @association = Association.find(params[:id])
    @adverts = @association.adverts.all
  end

#oklart om denna behövs.. ?
  def create
    @association = Association.new(params[:association])
    if @association.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @association
    else
      render 'new'
    end
  end

end
