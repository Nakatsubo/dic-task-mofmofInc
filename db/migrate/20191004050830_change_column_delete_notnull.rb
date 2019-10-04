class ChangeColumnDeleteNotnull < ActiveRecord::Migration[5.0]
  def change
    change_column_null :accesses, :property_id, true
  end
end
