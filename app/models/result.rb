class Result < ActiveRecord::Base
		#This method takes the list_of_results methods and pulls the competitor_id out of each Result
	def names_of_competitors
		x = self.id
		@list_of_competitors = Competitor.find_by_id(x)
	end
end