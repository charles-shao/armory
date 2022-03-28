class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.references :model
      t.string :name
      t.integer :points, limit: 2
      t.integer :power, limit: 1
      t.integer :movement, limit: 1
      t.integer :weapon_skill, limit: 1
      t.integer :ballistic_skill, limit: 1
      t.integer :strength, limit: 1
      t.integer :toughness, limit: 1
      t.integer :wounds, limit: 1
      t.integer :attacks, limit: 1
      t.integer :leadership, limit: 1
      t.integer :sv, limit: 1
      t.integer :invulnerable_save, limit: 1
      t.integer :ranged_invulnerable_save, limit: 1
      t.integer :melee_invulnerable_save, limit: 1
      t.integer :fnp, limit: 1
      t.integer :mortal_fnp, limit: 1
      t.integer :wound_regen, limit: 1
      t.boolean :revivable

      t.timestamps
    end
  end
end
