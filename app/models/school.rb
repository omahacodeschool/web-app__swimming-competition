class School < ActiveRecord::Base

  # gets the conference_id from class School
  # returns conference name String from class Conference
  def conf_name
    x = self.conference_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end

end