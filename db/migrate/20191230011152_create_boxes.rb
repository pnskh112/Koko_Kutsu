class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.string :name
      t.references :admin, index: true, foreign_key: true
      t.integer :max_vertical
      t.integer :max_side
      t.timestamps
    end
  end
end
