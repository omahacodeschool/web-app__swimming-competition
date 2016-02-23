class Conference <ActiveRecord::Base
  def is_valid?
    if self.conference_name == nil || self.conference_name == ""
      return false
    else
      return true
    end
  end
end