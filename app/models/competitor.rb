class Competitor < ActiveRecord::Base

  # gets the school_id from class Competitor
  # returns school name String from class School
  def school_name
    x = self.school_id
    y = School.find_by_id(x)
    return y.school_name
  end

end