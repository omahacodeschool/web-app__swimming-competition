class Competitor <ActiveRecord::Base

  def is_valid?
    if self.first_name == nil || self.first_name == "" || self.last_name == nil || self.last_name == "" || self.school_name == nil || self.school_name == "" || self.conference_name == nil || self.conference_name == "" || self.gender == nil || self.gender == ""
      return false
    else
      return true
    end
  end

end