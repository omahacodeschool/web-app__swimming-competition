class Team < ActiveRecord::Base

  def conference_name
    x = team
    y = x.conference_id
    z = Conference.find_by_id(y)
    binding.pry
    return z.conference
  end

end
