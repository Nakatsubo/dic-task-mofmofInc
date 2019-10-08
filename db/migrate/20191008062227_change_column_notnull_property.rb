class ChangeColumnNotnullProperty < ActiveRecord::Migration[5.0]
  def up
    change_column :properties, :name, :string, null: false
    change_column :properties, :price, :integer, null: false
    change_column :properties, :address, :string, null: false
    change_column :properties, :year, :integer, null: false
    change_column :properties, :note, :text, null: false
  end

  def down
    change_column :properties, :name, :string
    change_column :properties, :price, :integer
    change_column :properties, :address, :string
    change_column :properties, :year, :integer
    change_column :properties, :note, :text
  end
end
