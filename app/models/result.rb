class Result < ActiveRecord::Base

  def event
    x = Signup.find_by_id(self.event_id)
    return x.event_name
  end

end