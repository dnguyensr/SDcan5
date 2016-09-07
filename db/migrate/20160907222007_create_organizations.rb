class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :website
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.text :description
      t.boolean :volunteers
      t.boolean :donations

      t.timestamps
    end
  end
end
