class CreateAttorneys < ActiveRecord::Migration[5.0]
  def change
    create_table :attorneys do |t|

      t.timestamps
    end
  end
end
