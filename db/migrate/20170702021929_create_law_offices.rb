class CreateLawOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :law_offices do |t|

      t.timestamps
    end
  end
end
