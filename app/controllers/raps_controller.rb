class RapsController < ApplicationController
   before_action :authenticate_user!,except:[:index]
  def index
   @raps = Rap.all
  end
  def new
    @rap = Rap.new # needed to instantiate the form_for

  end

  def create
    @rap = Rap.new(rap_params)
    @rap.save
    redirect_to raps_path(@rap)
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @rap = Rap.find(params[:id])
  end

  def update
    @rap = Rap.find(params[:id])
    @rap.update(rap_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to raps_path(@rap)
  end

  def destroy
    @rap = Rap.find(params[:id])
    @rap.destroy
    redirect_to raps_path
  end

  private

  def rap_params
    params.require(:rap).permit(:url)
  end
end
