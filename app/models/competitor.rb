class Competitor < ActiveRecord::Base

  # returns a 'competitor's' school name.
  # gets 'school_id' Integer from class Competitor
  # gets 'schools.id' Integer from class School
  # returns 'school_name' String from class School
  def school_name
    x = self.school_id # x = ("competitors.id", "competitor_name", "school_id")
    y = School.find_by_id(x) # y = ("schools.id", "school_name", "conference_id")
    return y.school_name # returns "school_name" of y
  end

  def conf_name
    return "Conference Name"
  end

end