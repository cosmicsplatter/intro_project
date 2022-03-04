class TypesController < ApplicationController
  def show
    @type = Type.includes(:pokemon).find(params[:id])
  end
end
