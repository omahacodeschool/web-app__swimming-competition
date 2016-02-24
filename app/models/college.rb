class College < ActiveRecord::Base
  def get_errors
    return @errors
  end

  def set_errors
    @errors = []
    if self.college_name == ""
      @errors << "College name cannot be blank"
    end
    if self.conference_id == nil
      @errors << "Conference ID cannot be blank"
    end
  end

  def is_valid
    self.set_errors
    if @errors.length > 0
      return false
    else
      return true
    end
  end

  # Get the conference name to display w/ single college
  #
  # Return conference name String
  def conf_name
    x = self.conference_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end
end