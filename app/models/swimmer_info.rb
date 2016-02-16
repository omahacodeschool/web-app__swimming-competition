class SwimmerInfo < ActiveRecord::Base

  def team_name
    x = team_id
    y = Team.find_by_id(x)
    return y.team
  end

  def swimmer_name
    z = self.first_name + " " + self.last_name
    return z
  end

  def team_access
    x = self.team_id
    y = Team.find_by_id(x)
    return y
  end

end



