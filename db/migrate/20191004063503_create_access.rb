class CreateAccess < ActiveRecord::Migration[5.0]
  def change
    create_table :accesses do |t|
      t.string :route1
      t.string :station1
      t.integer :distance1
      t.string :route2
      t.string :station2
      t.integer :distance2
      t.references :property, foreign_key: true
    end
  end
end
