class AddColumnsToLeaves < ActiveRecord::Migration
  def change
    add_column :leaves, :start_date, :date
    add_column :leaves, :end_date, :date
  end
end
