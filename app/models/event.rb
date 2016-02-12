class Event < ActiveRecord::Base


	#this method returns a list of Results object
	# that contain the event_id of the current Event
	def list_of_results
		list_results = Result.where({"event_id" => self.id})
		if list_results.empty?
			return nil
		else
			id_arr = []
			list_results.each do |result|
				id_arr << result.competitor_id
			end
		end

		competitors = []
		if id_arr.empty?
			return nil
		else
			#with the competitor.id find each Competitor object in the competitor table
			 id_arr.each do |c|
			 	x = Competitor.find_by_id(c)

			 	if x != nil
					competitors << x
				end
			end
		end

		return competitors
	end


	def top_three
		list_results = Result.where({"event_id" => self.id})

		if list_results.empty?
			return nil
		else
			# event_id   | competitor_id  | time
			#-------------------------------------
			# 2 	     | 	1			  | 105
			# 2 	     | 	3			  | 110
			# 2 	     | 	5			  | 108
			# 2 	     | 	6			  | 103

			top_three = list_results.sort {|a,b| a.time <=> b.time}[0..2]
			if top_three.length < 3
				return nil
			else
				return top_three
			end
		end
	end



end
