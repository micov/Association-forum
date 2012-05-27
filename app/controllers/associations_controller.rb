class AssociationsController < ApplicationController

  def show
    @association = Association.find(params[:id])
  end

  def index
    @associations = Association.all
  end


  def new
  	@association = Association.new
  end

  def create
    @association = Association.new(params[:association])
    if @association.save
      flash[:success] = "The association has been created!"
      redirect_to @association
    else
      render 'new'
    end
  end

  def edit
    @association = Association.find(params[:id])
  end

  def update
    @association = Association.find(params[:id])
    if @association.update_attributes(params[:association])
      flash[:success] = "Association updated!"
      redirect_to @association
    else
      render 'edit'
    end
  end
end
