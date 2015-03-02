class DynamitesController < ApplicationController
  before_action :set_dynamite, only: [:show, :edit, :update, :destroy]
	before_filter :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
	
  respond_to :html

  def index
    @dynamites = Dynamite.all
    respond_with(@dynamites)
  end

  def show
    respond_with(@dynamite)
  end

  def new
    @dynamite = Dynamite.new
    respond_with(@dynamite)
  end

  def edit
  end

  def create
    @dynamite = Dynamite.new(dynamite_params)
		@dynamite.user_id = current_user.id
    @dynamite.save
    respond_with(@dynamite)
  end

  def update
    @dynamite.update(dynamite_params)
    respond_with(@dynamite)
  end

  def destroy
    @dynamite.destroy
    respond_with(@dynamite)
  end

  private
    def set_dynamite
      @dynamite = Dynamite.find(params[:id])
    end

    def dynamite_params
      params.require(:dynamite).permit(:content)
    end
end
