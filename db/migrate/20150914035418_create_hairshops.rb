class CreateHairshops < ActiveRecord::Migration
  def change
    create_table :hairshops do |t|
      
      t.string :name
      t.string :address
      t.string :phonenumber
      t.string :price
      t.string :opentime
      t.string :hompage
      
      
      t.timestamps null: false
    end
  end
end
