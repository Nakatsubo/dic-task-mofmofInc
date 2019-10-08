class CreateAccesses < ActiveRecord::Migration[5.0]
  def change
    create_table :accesses do |t|
      t.string :route
      t.string :station
      t.integer :distance
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
