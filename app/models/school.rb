class School < ActiveRecord::Base

  # gets 'conference_id' Integer from class School
  # gets 'conferences.id' Integer from class Conference
  # returns 'conference_name' from class Conference
  def conf_name
    x = self.conference_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end

end