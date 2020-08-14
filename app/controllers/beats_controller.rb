class BeatsController < ApplicationController
   before_action :authenticate_user!,except:[:index]
  def index
   @beats = Beat.all
  end
  def new
    @beat = Beat.new # needed to instantiate the form_for

  end

  def create
    @beat = Beat.new(beat_params)
    @beat.save
    redirect_to beats_path(@beat)
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @beat = Beat.find(params[:id])
  end

  def update
    @beat = Beat.find(params[:id])
    @beat.update(beat_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to beats_path(@beat)
  end

  def destroy
    @beat = Beat.find(params[:id])
    @beat.destroy
    redirect_to beats_path
  end

  private

  def beat_params
    params.require(:beat).permit(:url)
  end

end

