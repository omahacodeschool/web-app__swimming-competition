class Swimmer < ActiveRecord::Base
  @swimmers = Swimmer.all

  def swimmer_team
    x = self.team_id
    y = Team.find_by_id(x)

    return y.team_name
  end

  def swimmer_conference
    a = self.team_id
    b = Team.find_by_id(a)
    c = b.conference_id
    d = Conference.find_by_id(c)
    #binding.pry
    return d.conference_name
  end
end