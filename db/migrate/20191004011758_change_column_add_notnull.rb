class ChangeColumnAddNotnull < ActiveRecord::Migration[5.0]
  def change
    change_column_null :properties, :name, false
    change_column_null :properties, :price, false
    change_column_null :properties, :address, false
    change_column_null :properties, :year, false
    change_column_null :properties, :note, false
    change_column_null :accesses, :route, false
    change_column_null :accesses, :station, false
    change_column_null :accesses, :distance, false
    change_column_null :accesses, :property_id, false
  end
end
