class Result < ActiveRecord::Base
	
		#This method takes the list_of_results methods and pulls the competitor_id out of each Result
	def name_of_competitor
		x = self.competitor_id
		y = Competitor.find_by_id(x)

		if y == nil
			return nil

		else
			y.first_name + " " + y.last_name
		end
	end

	def name_of_event
		x = self.event_id
		y = Event.find_by_id(x)

		if y == nil
			return nil

		else
			return y.name
		end
	end
end