class Result < ActiveRecord::Base

  def event
    x = Signup.find_by_id(self.signup_id)
    y = Event.find_by_id(x.event_id)
    return y
  end

  def competitor
    x = Signup.find_by_id(self.signup_id)
    y = Competitor.find_by_id(x.competitor_id)
    return y
  end

end