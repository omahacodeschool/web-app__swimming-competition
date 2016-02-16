class SwimmerInfo < ActiveRecord::Base

  def team_name
    x = team_id
    y = Team.find_by_id(x)
    return y.team
  end

end



