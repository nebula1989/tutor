class AddDateFieldToClassreport < ActiveRecord::Migration[5.0]
  def change
    add_column :class_reports, :date_of_class, :date
  end
end
