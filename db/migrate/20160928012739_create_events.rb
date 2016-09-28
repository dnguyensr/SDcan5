class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :organizer_id
      t.string :location
      t.text :description
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.boolean :need_volunteers
      t.boolean :need_donations

      t.timestamps
    end
  end
end
