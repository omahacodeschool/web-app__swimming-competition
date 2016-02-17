class Competitor < ActiveRecord::Base
  def results
    results = Result.where("competitor_id" => self.id)
    return results
  end

  def school_name
    s = School.find_by_id(self.school_id)
    school = s.school
    return school
  end

  def conference_name
    c = School.find_by_id(self.school_id)
    conference = c.conference
    return conference
  end

  def conference_id
    c= School.find_by_id(self.school_id)
    c_id = c.conference_id
    return c_id
  end

end