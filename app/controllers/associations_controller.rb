class AssociationsController < ApplicationController
  load_and_authorize_resource

  def show
    #@association = Association.find(params[:id])
    @adverts = @association.adverts.paginate(page: params[:page])
    end

    def index
     # @associations = Association.all
      @associations = Association.paginate(page: params[:page])
    end


    def new
      #   @association = Association.new
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
      # @association = Association.find(params[:id])
      #authorize! :update, @association
    end

    def update
      # @association = Association.find(params[:id])
      if @association.update_attributes(params[:association])
        flash[:success] = "Association updated!"
        redirect_to @association
      else
        render 'edit'
      end
    end

    def destroy
      @association = Association.find(params[:id])
      @association.destroy

      respond_to do |format|
        format.html { redirect_to associations_url }
        format.json { head :ok }
      end
    end
 
end  