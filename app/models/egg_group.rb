class EggGroup < ApplicationRecord
  has_many :pokemon_egg_group
  has_many :pokemon, through: "pokemon_egg_group"

  # validates :egg_group_id, presence: true
  validates :name, presence: true
end
