class FirstScenario < ActiveRecord::Base
	belongs_to :user
	has_many :results
end
