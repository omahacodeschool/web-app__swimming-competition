class Competitor < ActiveRecord::Base

  # gets 'school_id' Integer from class Competitor
  # gets 'schools.id' Integer from class School
  # returns 'school_name' String from class School
  def school_name
    x = self.school_id
    y = School.find_by_id(x)
    return y.school_name
  end

end