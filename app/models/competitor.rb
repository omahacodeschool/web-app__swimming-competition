class Competitor < ActiveRecord::Base

  def results
    r = Result.where("competitor_id" => self.id)
    return r
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
    c = School.find_by_id(self.school_id)
    c_id = c.conference_id
    return c_id
  end

end