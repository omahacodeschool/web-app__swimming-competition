class Competitor <ActiveRecord::Base

  def set_errors
    @errors = []
    if self.first_name == nil || self.first_name == ""
      @errors << "First name cannot be blank."
    end
    if self.last_name == nil || self.last_name == ""
      @errors << "Last name cannot be blank."
    end
    if self.school_name == nil || self.school_name == ""
      @errors << "School name cannot be blank."
    end
    if self.conference_name == nil || self.conference_name == ""
      @errors << "Conference name cannot be blank."
    end
    if self.gender == nil || self.gender == ""
      @errors << "Gender cannot be blank."
    end
  end

  def is_valid?
    self.set_errors
    if @errors.length > 0
      return false
    else
      return true
    end
  end

  def get_errors
    return @errors
  end

end