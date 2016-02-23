class Style <ActiveRecord::Base

  def set_errors
    @errors = []
    if self.style == nil || self.style == ""
    @errors << "Style cannot be blank."
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