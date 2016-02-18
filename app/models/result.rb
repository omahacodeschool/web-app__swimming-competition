class Result < ActiveRecord::Base

  def event
    x = Signup.where({"id" => self.signup_id)
    y = Event.find_by_id(x)
    return y.event_name
  end

end