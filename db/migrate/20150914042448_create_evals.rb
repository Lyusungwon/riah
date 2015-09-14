class CreateEvals < ActiveRecord::Migration
  def change
    create_table :evals do |t|

      t.timestamps null: false
    end
  end
end
