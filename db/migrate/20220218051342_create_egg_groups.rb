class CreateEggGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :egg_groups do |t|
      t.integer :egg_group_id
      t.string :name

      t.timestamps
    end
  end
end
