class AddMpoaToResults < ActiveRecord::Migration
  def change
  	add_column :results, :mpoa, :string
  	add_column :results, :mpoa_name, :string
  	add_column :results, :review_with_mpoa, :string
  end
end
