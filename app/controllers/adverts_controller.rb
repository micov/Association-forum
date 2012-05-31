class AdvertsController < ApplicationController
  #Atomcaticly loads the advert in question through RESTful design and authorizes the user for the
  #different actions  
  load_and_authorize_resource

  def index
    @adverts = Advert.paginate(page: params[:page])
  end

  def show
    @association=Association.find(@advert[:association_id])
  end

  def new
    @advert = Advert.new
  end

  def create
    if @advert.save
      flash[:success] = "The advert has been created!"
      redirect_to @advert
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @advert.update_attributes(params[:advert])
      flash[:success] = "Advert updated!"
      redirect_to @advert
    else
      render 'edit'
    end
  end

  def destroy
    @advert.destroy
    flash[:success] = "Advert deleted!"

    respond_to do |format|
      format.html { redirect_to adverts_url }
      format.json { head :ok }
    end
  end
end
