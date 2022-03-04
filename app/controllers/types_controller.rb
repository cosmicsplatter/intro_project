class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    @type = Type.includes(:pokemon).find(params[:id])
  end
end
