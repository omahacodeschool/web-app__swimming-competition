class Conference <ActiveRecord::Base

  def set_errors
    @errors = []
    if self.conference_name == nil || self.conference_name == ""
      @errors << "Conference name cannot be blank."
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