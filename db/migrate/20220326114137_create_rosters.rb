class CreateRosters < ActiveRecord::Migration[7.0]
  def change
    create_table :rosters do |t|
      t.references :user
      t.string :name
      t.string :faction

      t.timestamps
    end
  end
end
