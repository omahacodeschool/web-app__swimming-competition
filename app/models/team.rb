class Team < ActiveRecord::Base

  def conference_name
    x = conference_id
    y = Conference.find_by_id(x)
    return y.conference 
  end

  def delete_team
    x = self.id
    x.delete
  end

end
