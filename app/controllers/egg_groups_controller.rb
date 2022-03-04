class EggGroupsController < ApplicationController
  def index
    @egg_group = EggGroup.all
  end

  def show
    @egg_group = EggGroup.includes(:pokemon).find(params[:id])

  end
end
