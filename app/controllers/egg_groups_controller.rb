class EggGroupsController < ApplicationController
  def show
    @egg_group = EggGroup.includes(:pokemon).find(params[:id])
  end
end
