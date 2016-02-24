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


	#Returns @errors
  	def get_errors
    	return @errors
 	end

  	#Adds errors to Hash
  	#
  	#Returns Hash
  	def set_errors
    	@errors = []

    	if self.time == nil
      	@errors << "You must add a time"
    	end
  	end

  # Checks if the record is valid.
  # 
  # Returns Boolean.
  	def is_valid
    	self.set_errors
    	if @errors.length > 0
      	return false
    	else
      	return true
    	end
  	end

end