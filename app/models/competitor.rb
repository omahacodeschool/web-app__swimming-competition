class Competitor < ActiveRecord::Base

  def set_errors
    @errors = []

    if self.first_name == ""
      @errors << "First Name cannot be blank."
    end

    if self.last_name == ""
      @errors << "Last Name cannot be blank."
    end

    if self.school_id == ""
      @errors << "Must select a school."
    end
  end

  def get_errors
    return @errors
  end

  def is_valid
    self.set_errors

    if @errors > 0
      return false
    else
      return true
    end
  end


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