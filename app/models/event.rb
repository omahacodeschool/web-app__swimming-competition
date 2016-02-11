class Event < ActiveRecord::Base

	#this method returns a list of Results object
	# that contain the event_id of the current Event
	def list_of_results
		x = self.id
		return @list_of_results = Result.where({"event_id" => x})
	end

end


