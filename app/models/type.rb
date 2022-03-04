class Type < ApplicationRecord
  has_many :pokemon_type
  has_many :pokemon, through: "pokemon_type"

  # validates :type_id, presence: true
  validates :name, presence: true
end
