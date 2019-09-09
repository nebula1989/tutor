class AddColumnsToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :name, :string
    add_column :students, :age, :integer
    add_column :students, :level, :integer
    add_column :students, :location, :string
    add_column :students, :birthday, :date
    add_column :students, :strength_weak, :text
    add_column :students, :user_id, :integer
  end
end
