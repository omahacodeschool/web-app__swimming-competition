class School < ActiveRecord::Base

  # gets 'conference_id' Integer from class School
  # gets 'conferences.id' Integer from class Conference
  # returns 'conference_name' from class Conference
  def conference
    return Conference.find_by_id(self.conference_id)
  end

end