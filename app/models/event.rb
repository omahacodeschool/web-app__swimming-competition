class Event < ActiveRecord::Base


	#this method returns a list of Results object
	# that contain the event_id of the current Event
	def list_of_results
		x = self.id
		#get the results that have this event_id
		list_results = Result.where({"event_id" => x})
		#with each of those results get the competitor_id
		if list_results.empty?
			return nil
		else
			id_arr = []
			list_results.each do |result|
				id_arr << result.competitor_id
			end
		end

		competitors = []
		if id_arr == nil
			return nil
		else
			#with the competitor.id find each Competitor object in the competitor table
			 id_arr.each do |c|
				competitors << Competitor.find_by_id(c)
			end
		end

		return competitors
	end

	#this method will return the Competitor object who is the first place winner of each event
	def name_of_first
	end

	#this method will return the Competitor object who is the second place winner of each event
	def name_of_second
	end

	#this method will return the Competitor object who is the third place winner of each event
	def name_of_third
	end

end
