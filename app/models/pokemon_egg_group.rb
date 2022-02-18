class PokemonEggGroup < ApplicationRecord
  belongs_to :pokemons
  belongs_to :egg_groups
end
