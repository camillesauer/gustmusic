class RapsController < ApplicationController
  def index
   @raps = Rap.all
  end

  def new
    @rap = Rap.new # needed to instantiate the form_for
  end

  def create
    @rap = Rap.new(params[:rap])
    @rap.save
    redirect_to raps_path
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
     @rap = Rap.find(params[:id])
  end

  def update
     @rap = Rap.find(params[:id])
     @rap.update(rap_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to raps_path(@beat)
  end

  def destroy
     @rap = Rap.new(params[:rap])
     @rap.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to raps_path
  end
end
