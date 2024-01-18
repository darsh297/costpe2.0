class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.date :report_date
      t.text :tasks
      t.integer :hours
      t.integer :minutes
      t.boolean :status, default: false





      t.timestamps
      t.references :user, null: false, foreign_key: true


    end
  end
end
