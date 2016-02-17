class School < ActiveRecord::Base

  # gets 'conference_id' Integer from class School
  # gets 'conferences.id' Integer from class Conference
  # returns 'conference_name' from class Conference
  def conf_name
    # x = Integer "conference_id"
    x = self.conference_id
    # y = ("id", "conference_name")
    y = Conference.find_by_id(x)
    # returns a String "conference_name"
    return y.conference_name
  end

end