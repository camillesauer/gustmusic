class BeatsController < ApplicationController
  def index
   @beats = Beat.all
  end

  def new
    @beat = Beat.new # needed to instantiate the form_for
  end

  def create
    @beat = Beat.new(params[:beat])
    @beat.save
    redirect_to beats_path
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @beat = Beat.find(params[:id])
  end

  def update
    @beat = Beat.find(params[:id])
    @beat.update(beat_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to beat_path(@beat)
  end

  def destroy
    @beat = Beat.new(params[:beat])
    @beat.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to beats_path
  end
end
