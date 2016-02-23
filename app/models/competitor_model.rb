class Competitor <ActiveRecord::Base

  def is_valid?
    if self.first_name == nil || self.last_name == nil || self.school_name == nil || self.conference_name == nil || self.gender == nil
      return false
    else
      return true
    end
  end

end