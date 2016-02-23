class Style <ActiveRecord::Base

  def is_valid?
    if self.style == nil
      return false
    else
      return true
    end
  end

end