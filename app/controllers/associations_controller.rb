class AssociationsController < ApplicationController
  #Atomcaticly loads the advert in question through RESTful design and authorizes the user for the
  #different actions
  load_and_authorize_resource

  def show
    @adverts = @association.adverts.paginate(page: params[:page])
  end

  def index
    @associations = Association.paginate(page: params[:page])
  end


  def new
  end

  def create
    if @association.save
      flash[:success] = "The association has been created!"
      redirect_to @association
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @association.update_attributes(params[:association])
      flash[:success] = "Association updated!"
      redirect_to @association
    else
      render 'edit'
    end
  end

  def destroy
    @association.destroy
    flash[:success] = "Association deleted!"

    respond_to do |format|
      format.html { redirect_to associations_url }
      format.json { head :ok }
    end
  end
end  