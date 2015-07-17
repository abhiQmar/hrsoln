class AddColumnsToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :designation, :string
    add_column :employees, :total_leaves, :tinyint
    add_column :employees, :leaves_left, :tinyint
  end
end
