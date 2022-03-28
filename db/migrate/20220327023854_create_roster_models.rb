class CreateRosterModels < ActiveRecord::Migration[7.0]
  def change
    create_table :roster_models do |t|
      t.references :roster
      t.references :model
      t.integer :unit_count

      t.timestamps
    end
  end
end
