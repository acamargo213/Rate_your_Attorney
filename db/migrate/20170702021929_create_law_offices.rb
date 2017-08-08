class CreateLawOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :law_offices do |t|
      t.string :name
      t.string :phone_number
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      ## add_attachment :picture
      t.string :website_link
      ## t.string :practice_areas
      t.timestamps
    end
  end
end
