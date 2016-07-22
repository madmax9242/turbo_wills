class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :first_scenarios_id
      t.integer :second_scenarios_id
      t.integer :third_scenarios_id
      t.integer :fourth_scenarios_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
