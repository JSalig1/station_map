class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :station

      t.string :name, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false

      t.timestamps null: false
    end
  end
end
