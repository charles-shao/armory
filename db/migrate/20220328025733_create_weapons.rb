class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.references :unit
      t.string :name
      t.integer :points, limit: 2
      t.string :category
      t.string :attacks
      t.integer :range, limit: 2
      t.string :strength
      t.string :armor_penetration
      t.string :damage
      t.string :ability_notes
      t.timestamps
    end
  end
end
