class AddColumnPropertyId < ActiveRecord::Migration[5.0]
  def change
    add_reference :accesses, :property, foreign_key: true
  end
end
