class AdvertsController < ApplicationController
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

end
