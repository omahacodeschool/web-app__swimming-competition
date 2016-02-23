class Event < ActiveRecord::Base

	def delete_result_info
		Result.where("event_id" => self.id).delete_all
	end

	#this method returns a list of Results object
	# that contain the event_id of the current Event
	def list_of_results
		if self.results_for_event == nil
			return nil
		else
			id_arr = []
			@list_results.each do |result|
				id_arr << result.competitor_id
			end

	end

		competitors = []
		# if id_arr.empty?
		# 	return nil
		# else
			#with the competitor.id find each Competitor object in the competitor table
			 id_arr.each do |c|
			 	x = Competitor.find_by_id(c)

			 	if x != nil
					competitors << x
				end
			# end
		end

		return competitors
	end

	#returns the Competitor objects with the three best times
	def top_three
		if self.results_for_event == nil
			return nil
		else
			competitor_arr = []
			time_arr = []
			@list_results.each do |result|
				
				if result.time == nil
					return nil

				else
					top_three = @list_results.sort {|a,b| a.time <=> b.time}[0..2]
						return top_three
				end
			end
		end
	end

	#Lists the results for this event
	#
	#Returns Array
 	def results_for_event
 		@list_results = Result.where({"event_id" => self.id})
		if @list_results.empty?
			return nil
		else
			return @list_results
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

    	if self.name == ""
      	@errors << "Event name cannot be blank"
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




				# event_id   | competitor_id  | time
				#-------------------------------------
				# 2 	     | 	1			  | 105
				# 2 	     | 	3			  | 110
				# 2 	     | 	5			  | 108
				# 2 	     | 	6			  | 103
