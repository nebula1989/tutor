class AddColumnsToClassreports < ActiveRecord::Migration[5.0]
  def change
    add_column :class_reports, :student_name, :string
    add_column :class_reports, :student_level, :integer
    add_column :class_reports, :user_id, :integer
    add_column :class_reports, :earnings, :decimal
    add_column :class_reports, :class_notes, :text
  end
end
