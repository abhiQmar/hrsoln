class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.integer :employee_id
      t.integer :days, :limit => 1
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
