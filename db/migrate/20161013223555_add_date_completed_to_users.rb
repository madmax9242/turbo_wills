class AddDateCompletedToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :date_completed, :string
  	add_column :users, :person_helping, :string
  end
end
