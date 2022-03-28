class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.string :name
      t.integer :category
      t.integer :min_size
      t.integer :max_size

      t.timestamps
    end
  end
end
