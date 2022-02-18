class PokemonType < ApplicationRecord
  belongs_to :pokemons
  belongs_to :types

  validates :pokemon_type_id, presence: true
  validates :pokemon_id, presence: true
  validates :type_id, presence: true
end
