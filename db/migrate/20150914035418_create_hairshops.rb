class CreateHairshops < ActiveRecord::Migration
  def change
    create_table :hairshops do |t|

      t.timestamps null: false
    end
  end
end
