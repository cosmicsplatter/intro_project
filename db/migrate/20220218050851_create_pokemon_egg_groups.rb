class CreatePokemonEggGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_egg_groups do |t|
      t.integer :pokemon_egg_group__id
      t.integer :pokemon_id
      t.integer :egg_group_id

      t.timestamps
    end
  end
end
