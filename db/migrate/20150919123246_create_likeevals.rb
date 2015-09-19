class CreateLikeevals < ActiveRecord::Migration
  def change
    create_table :likeevals do |t|
      t.integer :user_id
      t.integer :eval_id
      t.boolean :like, default: false

      t.timestamps null: false
    end
  end
end
