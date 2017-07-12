class CreateLawOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :law_offices do |t|
      t.string :law_office
      t.string :contact_information
      ## add_attachment :picture
      t.string :website_link
      ## t.string :practice_areas
      t.timestamps
    end
  end
end
