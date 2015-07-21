class RemoveColumnFromLeaves < ActiveRecord::Migration
  def change
    remove_column :leaves, :days, :string
  end
end
