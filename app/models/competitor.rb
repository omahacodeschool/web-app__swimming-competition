class Competitor < ActiveRecord::Base
	
	#Input current Competitor object
	#Return the School object's name
	def school_name
		x = self.school_id
		y = School.find_by_id(x)
		return y.name
	end

	def event_entry
		list_results = Result.where({"competitor_id" => self.id})
		if list_results.empty?
			return nil
		else
			# event_id   | competitor_id  | time
			#-------------------------------------
			# 2 	     | 	1			  | 105
			# 3 	     | 	1			  | 110
			# 4 	     | 	1			  | 108
			# 6 	     | 	1			  | 103

			event_id_arr =[]
			list_results.each do |result|
				event_id_arr << result.event_id
			end
		end

		if event_id_arr.empty?
			return nil
		else
			return Event.where("id" => event_id_arr)
		end
	end

end

