class AddMpoaToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :mpoa, :string
  	add_column :users, :mpoa_name, :string
  	add_column :users, :review_with_mpoa, :string
  	add_column :users, :surrogate, :string
  end
end
