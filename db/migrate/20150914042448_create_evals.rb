class CreateEvals < ActiveRecord::Migration
  def change
    create_table :evals do |t|
      
      t.integer :user_id
      t.integer :hairshop_id
      
      t.string :name
      t.text :content
      
      t.timestamps null: false
    end
  end
end
