class CreateEvals < ActiveRecord::Migration
  def change
    create_table :evals do |t|
      
      t.integer :user_id
      t.integer :hairshop_id
      
      t.text :content

      t.text :images, array: true, default: []

      t.integer :rating_a
      t.integer :rating_b
      t.integer :rating_c
      t.integer :rating_d
      t.integer :rating_e
      t.integer :rating_f
      
      t.string :prices
      t.string :designer
      
      t.integer :likenumber, default: 0
      
      t.timestamps null: false
    end
  end
end
