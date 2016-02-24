class Conference < ActiveRecord::Base

	#Input current Conference object
	#Returns the School objects who have the Conference id of the current Conference
	def schools_members
		x = School.where({"conference_id" => self.id})
		if x.empty?
			return nil
		else
			return x
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
      	@errors << "Conference name cannot be blank"
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