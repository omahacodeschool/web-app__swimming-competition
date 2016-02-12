class Swimmer < ActiveRecord::Base
  @swimmers = Swimmer.all
  def swimmer_team
    x = self.team_id
    y = Team.find_by_id(x)
    return y.team_name
  end
end