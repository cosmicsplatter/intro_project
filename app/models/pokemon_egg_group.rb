class PokemonEggGroup < ApplicationRecord
  belongs_to :pokemons
  belongs_to :egg_groups

  validates :pokemon_egg_group__id, presence: true
  validates :pokemon_id, presence: true
  validates :egg_group_id, presence: true
end
