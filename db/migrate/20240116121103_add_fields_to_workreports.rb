class AddFieldsToWorkreports < ActiveRecord::Migration[7.1]
  def change
    add_column :workreports, :report_date, :date
    add_column :workreports, :project, :string
    add_column :workreports, :task, :string
    add_column :workreports, :hours, :integer
    add_column :workreports, :status, :string
  end
end
