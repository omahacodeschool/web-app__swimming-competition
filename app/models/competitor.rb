class Competitor < ActiveRecord::Base

  def results
    @results = Result.where("competitor_id" => self.id)
    return @results
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

end