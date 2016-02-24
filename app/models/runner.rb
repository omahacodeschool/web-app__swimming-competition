class Runner < ActiveRecord::Base

  # returns a 'competitor's' school name.
  # gets 'school_id' Integer from class Competitor
  # gets 'schools.id' Integer from class School
  # returns 'school_name' String from class School
  def school
    return School.find_by_id(self.school_id)
  end

end