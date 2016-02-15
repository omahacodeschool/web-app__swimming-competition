class Team < ActiveRecord::Base

  def conference_name
    x = conference_id
    y = Conference.find_by_id(x)
    return y.conference
  end

end
