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

#deletes all of the Competitor objects that
#have a school id of the current School object
	def delete_school_info
		Competitor.where("school_id" => self.id).delete_all
	end

end
