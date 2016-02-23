class Team < ActiveRecord::Base

  def is_valid
    if self.team_name == "" || self.conference_id == nil
      false
    else
      true
    end    
  end

  def team_conference
    x = self.conference_id
    y = Conference.find_by_id(x)
    
    return y.conference_name
  end
end