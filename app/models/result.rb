class Result < ActiveRecord::Base

  def event
    x = Signup.where({"id" => self.signup_id})
    y = Event.find_by_id(x)
    return y.event_name
  end

  def test_event
    Return ["event 1", "event 2", "event_3"]
  end

end