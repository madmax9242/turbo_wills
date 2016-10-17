class AddIdkToScenarios < ActiveRecord::Migration
  def change
  	add_column :first_scenarios, :not_sure, :string, default: "0"
  	add_column :second_scenarios, :not_sure, :string, default: "0"
  	add_column :third_scenarios, :not_sure, :string, default: "0"
  	add_column :fourth_scenarios, :not_sure, :string, default: "0"
  end
end
