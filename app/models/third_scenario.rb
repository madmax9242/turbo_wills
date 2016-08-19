class ThirdScenario < ActiveRecord::Base
	belongs_to :user
	has_many :results
end
