class Swimmer < ActiveRecord::Base
  @swimmers = Swimmer.all

  def swimmer_team
    x = self.team_id
    y = Team.find_by_id(x)

    return y.team_name
  end

  def swimmer_conference
    a = self.team_id
    z = Conference.find_by_id(a)
    
    return z.conference_name
  end
end