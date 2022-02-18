class PokemonType < ApplicationRecord
  belongs_to :pokemons
  belongs_to :types
end
