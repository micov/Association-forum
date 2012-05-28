class AdvertsController < ApplicationController
  load_and_authorize_resource
  
  def index
    @adverts = Advert.paginate(page: params[:page])
  end

  def show
    @advert = Advert.find(params[:id])
    @association=Association.find(@advert[:association_id])
  end

  def new
  	@advert = Advert.new
  end

  def create
    @advert = Advert.new(params[:advert])
    if @advert.save
      flash[:success] = "The advert has been created!"
      redirect_to @advert
    else
      render 'new'
    end
  end

  def edit
    #@advert = Advert.find(params[:id])
  end

  def update
    @advert = Advert.find(params[:id])
    if @advert.update_attributes(params[:advert])
      flash[:success] = "Advert updated!"
      redirect_to @advert
    else
      render 'edit'
    end
  end
end
