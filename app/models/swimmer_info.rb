class SwimmerInfo < ActiveRecord::Base

  def team_name
    x = team_id
    binding.pry
    y = Team.find_by_id(x)
    binding.pry
    return y.team
  end

end



