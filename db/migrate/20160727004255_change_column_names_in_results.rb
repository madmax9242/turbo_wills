class ChangeColumnNamesInResults < ActiveRecord::Migration
  def change
  	rename_column :results, :first_scenarios_id, :first_scenario_id
  	rename_column :results, :second_scenarios_id, :second_scenario_id
  	rename_column :results, :third_scenarios_id, :third_scenario_id
  	rename_column :results, :fourth_scenarios_id, :fourth_scenario_id
  end
end
