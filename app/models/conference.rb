class Conference < ActiveRecord::Base

	#Input current Conference object
	#Return the School objects who have the Conference id of the current Conference
	def schools_members
		x = School.where({"conference_id" => self.id})
		if x.empty?
			return nil
		else
			return x
		end
	end


#If the administrator tries to delete a conference, 
#then the system should first check if there are any teams in that conference. 
#If there are none, then the system should delete the conference. 
#But if there are teams in the conference, 
#then the system should not delete the conference--
#it should tell the administrator to first 
#go manually delete those teams (or change their conference).
#returns true or false
	def	there_are_schools_in_conference
		x = School.where("conference_id" => self.id)
		if x != nil
			return true
		end
	end


end