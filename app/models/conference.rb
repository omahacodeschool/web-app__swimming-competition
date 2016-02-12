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
end