class ChangeNotnullAccess < ActiveRecord::Migration[5.0]
  def change
    change_column_null :accesses, :route, true
    change_column_null :accesses, :station, true
    change_column_null :accesses, :distance, true
  end
end
