class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.integer :pokemon_id
      t.integer :number
      t.string :name
      t.string :sprite

      t.timestamps
    end
  end
end
