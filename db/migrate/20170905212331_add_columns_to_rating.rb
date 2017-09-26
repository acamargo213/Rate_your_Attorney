class AddColumnsToRating < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :comments, :text
    add_column :ratings, :stars, :integer
    add_column :ratings, :law_office_id, :integer
  end
end
