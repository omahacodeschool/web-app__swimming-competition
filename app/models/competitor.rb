class Competitor < ActiveRecord::Base

  # returns a 'competitor's' school name.
  # gets 'school_id' Integer from class Competitor
  # gets 'schools.id' Integer from class School
  # returns 'school_name' String from class School
  def school_name
    x = self.school_id
    # x = Integer "school_id"
    y = School.find_by_id(x)
    # y = ("id", "school_name", "conference_id")
    return y.school_name 
    # returns String "school_name"
  end

  def conf_name
    school = School.find_by_id(self.school_id)
    return school.conf_name
    # return "Conference Name"
  end

end