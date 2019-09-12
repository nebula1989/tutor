class UpdateDateToDatetime < ActiveRecord::Migration[5.0]
  def change
     change_column :class_reports, :date_of_class, :datetime
  end
end
