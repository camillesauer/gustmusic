class CompositionsController < ApplicationController
   before_action :authenticate_user!,except:[:index]
    def index
   @compositions = Composition.all
  end

  def new
    @composition = Composition.new # needed to instantiate the form_for
  end

  def create
    @composition = Composition.new(params[:composition])
    @composition.save
    redirect_to compositions_path
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
    @composition = Composition.new(params[:composition])
    @composition.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to compositions_path
  end
end

