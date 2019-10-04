class ChangeColumnNotnullAccess < ActiveRecord::Migration[5.0]
  def change
    change_column_null :accesses, :route1, true
    change_column_null :accesses, :station1, true
    change_column_null :accesses, :distance1, true
    change_column_null :accesses, :route2, true
    change_column_null :accesses, :station2, true
    change_column_null :accesses, :distance2, true
  end
end
