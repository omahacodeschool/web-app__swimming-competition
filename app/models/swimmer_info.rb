class SwimmerInfo < ActiveRecord::Base

  def swimmer_name
    z = self.first_name + " " + self.last_name
    return z
  end

  def team_access
    x = self.team_id
    y = Team.find_by_id(x)
    return y
  end

  def signup_result_access
    x = self.team_id
    y = SignupResult.find_by_id(x)
    return y
  end

  def team_exist?
    x = team_id
    y = Team.find_by_id(x)
    if y == nil
      return false
    else
      return true
    end
  end
  
end



