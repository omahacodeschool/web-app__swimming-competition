class Competitor < ActiveRecord::Base
	
	def school_name
		x = self.school_id
		y = School.find_by_id(x)
		return y.name
	end
end