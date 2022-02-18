class EggGroup < ApplicationRecord
  has_many :pokemon_egg_groups

  validates :egg_group_id, presence: true
  validates :name, presence: true
end
