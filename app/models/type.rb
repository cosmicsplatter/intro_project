class Type < ApplicationRecord
  has_many :pokemon_types

  validates :type_id, presence: true
  validates :name, presence: true
end
