class CreateClassReports < ActiveRecord::Migration[5.0]
  def change
    create_table :class_reports do |t|

      t.timestamps
    end
  end
end
