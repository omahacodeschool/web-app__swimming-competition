class Swimmer < ActiveRecord::Base
  @swimmers = Swimmer.all

  def is_valid
    if (self.swimmer_name == "" || self.swimmer_dob == "" || self.swimmer_gender == "" || self.swimmer_team == nil || self.swimmer_payment_status == nil)
      false
    else
      true
    end    
  end

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

    return d.conference_name
  end
end