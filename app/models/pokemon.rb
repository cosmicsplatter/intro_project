class Pokemon < ApplicationRecord
  has_many :pokemon_type
  has_many :type, through: "pokemon_type"
  has_many :pokemon_egg_group
  has_many :egg_group, through: "pokemon_egg_group"

  # validates :pokemon_id, presence: true
  validates :number, presence: true
  validates :name, presence: true
  validates :sprite, presence: true

  def self.search(search)
    if search
      pokemon = Pokemon.find_by(name: search)

      if pokemon
        where(id: pokemon)
      else
        Pokemon.all
      end
    else
      Pokemon.all
    end
  end
end
