class Competitor < ActiveRecord::Base

  # returns a 'competitor's' school name.
  # gets 'school_id' Integer from class Competitor
  # gets 'schools.id' Integer from class School
  # returns 'school_name' String from class School
  def school_name
    x = self.school_id
    y = School.find_by_id(x)
    return y.school_name
  end

  def conf_name
    x = self.school_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end

end