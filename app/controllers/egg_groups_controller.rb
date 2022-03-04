class EggGroupsController < ApplicationController
  def index; end

  def show
    @egg_group = EggGroup.includes(:pokemon).find(params[:id])
  end
end
