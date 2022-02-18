class Pokemon < ApplicationRecord
  has_many :pokemon_types
  has_many :pokemon_egg_groups
end
