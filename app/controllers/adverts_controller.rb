class AdvertsController < ApplicationController
  def index
    @adverts = Advert.paginate(page: params[:page])
  end

  def show
   @advert = Advert.find(params[:id])
  end
end
