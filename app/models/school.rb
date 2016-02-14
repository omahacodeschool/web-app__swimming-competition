class School < ActiveRecord::Base

		#Take the School's conference_id and finds the name of the Conference object
		def conference_name
			x = self.conference_id
			y = Conference.find_by_id(x)
				if y == nil
					return nil
				else
					return y.name
				end
		end

		#returns which Competitors belong to this School object
		def school_members
			x = self.id
			list_competitors = Competitor.where({"school_id" => x})
			if list_competitors.empty?
				return nil
			else
				return list_competitors
			end
		end


#If the administrator tries to delete a school, 
#then the system should first check if there are any teams in that school. 
#If there are none, then the system should delete the school. 
#But if there are teams in the school, 
#then the system should not delete the school--
#it should tell the administrator to first 
#go manually delete those teams (or change their school).
#returns true or false
	def	there_are_competitors_in_school
		x = Competitor.where("school_id" => self.id)
		if x != nil
			return true
		end
	end
end
