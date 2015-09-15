class CreateEvals < ActiveRecord::Migration
  def change
    create_table :evals do |t|
      
      t.integer :user_id
      t.integer :hairshop_id
      
      t.string :name
      t.text :content
      t.string :image
      t.string :password
      
      t.integer :rating_a
      t.integer :rating_c
      t.integer :rating_s
      t.integer :rating_f
      
      t.timestamps null: false
    end
  end
end
