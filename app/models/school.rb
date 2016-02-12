class School < ActiveRecord::Base

  def conference
    c = Conference.find_by_id(self.conference_id)
    conference = c.conference
    return conference
  end 

end