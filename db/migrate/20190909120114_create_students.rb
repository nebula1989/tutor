class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    drop_table :students
    create_table :students do |t|

      t.timestamps
    end
  end
end
