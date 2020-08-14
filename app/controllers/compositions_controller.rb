class CompositionsController < ApplicationController
  before_action :authenticate_user!,except:[:index]
  def index
   @compositions = Composition.all
  end
  def new
    @composition = Composition.new # needed to instantiate the form_for

  end

  def create
    @composition = Composition.new(composition_params)
    @composition.save
    redirect_to compositions_path(@composition)
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @composition = Composition.find(params[:id])
  end

  def update
    @composition = Composition.find(params[:id])
    @composition.update(composition_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to compositions_path(@composition)
  end

  def destroy
    @composition = Composition.find(params[:id])
    @composition.destroy
    redirect_to compositions_path
  end

  private

  def composition_params
    params.require(:composition).permit(:url)
  end
end

