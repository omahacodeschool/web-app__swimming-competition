class Team < ActiveRecord::Base

  def team_conference
    x = self.conference_id
    y = Conference.find_by_id(x)
    
    return y.conference_name
  end
end