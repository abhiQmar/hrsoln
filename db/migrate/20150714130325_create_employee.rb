class CreateEmployee < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :dept
      t.date :dob
      t.text :address
      t.date :doj
    end
  end
end
