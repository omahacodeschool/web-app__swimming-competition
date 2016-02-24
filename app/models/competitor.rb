class Competitor < ActiveRecord::Base
	
	#Input current Competitor object
	#Return the School object's name
	def school_name
		x = self.school_id
		y = School.find_by_id(x)
		if y != nil
			return y.name
		end
	end

#this method finds the results that match the Competitor object's id
#it then stores each Results' event_id in an Array
# then returns the Event object that matches the event_id
	def event_entry
		list_results = Result.where({"competitor_id" => self.id})
		if list_results.empty?
			return nil
		else
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


#this method deletes the Result objects matching this Competitor object
	def delete_competitor_info
		Result.where("competitor_id" => self.id).delete_all
	end


	#this method enters a competitor into events
	#
	# arr_of_event_ids - an Array of event ids
	#
	#returns nil
	def set_events(arr_of_event_ids)
		Result.where("competitor_id" => self.id).delete_all
	    arr_of_event_ids.each do |event_id|
	        result_row = Result.new
	        result_row.competitor_id = self.id
	        result_row.event_id = event_id
	        result_row.save
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

    	if self.first_name == ""
      	@errors << "First name cannot be blank"
    	end

    	if self.last_name == ""
      	@errors << "Last name cannot be blank"
    	end

    	if self.school_id == nil
      	@errors << "Must choose a school"
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
