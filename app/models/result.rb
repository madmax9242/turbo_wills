class Result < ActiveRecord::Base
	belongs_to :first_scenario
	belongs_to :second_scenario
	belongs_to :third_scenario
	belongs_to :fourth_scenario
	belongs_to :user
end
