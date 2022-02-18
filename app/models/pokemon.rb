class Pokemon < ApplicationRecord
  has_many :pokemon_types
  has_many :pokemon_egg_groups

  validates :pokemon_id, presence: true
  validates :number, presence: true
  validates :name, presence: true
  validates :sprite, presence: true
end
