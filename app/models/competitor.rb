class Competitor < ActiveRecord::Base
	
	#Input current Competitor object
	#Return the School object's name
	def school_name
		x = self.school_id
		y = School.find_by_id(x)
		return y.name
	end

	def event_entry
		x = self.id
		y = Result.where({"competitor_id" => self.id})
	end
end
