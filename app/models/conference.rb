class Conference < ActiveRecord::Base

	#Input current Conference object
	#Return the School objects who have the Conference id of the current Conference
	def schools_members
		x = self.id
		return School.where({"conference_id" => x})
	end
end