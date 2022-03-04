class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.search(params[:search])
  end

  def show
    @pokemon = Pokemon.includes(:type).includes(:egg_group).find(params[:id])
  end

  def pokemon_params
    params.require(:pokemon).permit(:name, :type, :egg_group, :search)
  end
end
