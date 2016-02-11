class School < ActiveRecord::Base

		#Take the School's conference_id and finds the name of the Conference object
		def conference_name
			x = self.conference_id
			y = Conference.find_by_id(x)
				return y.name
		end
end