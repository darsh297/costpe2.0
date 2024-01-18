class CreateWorkreports < ActiveRecord::Migration[7.1]
  def change
    create_table :workreports do |t|

      t.timestamps
    end
  end
end
