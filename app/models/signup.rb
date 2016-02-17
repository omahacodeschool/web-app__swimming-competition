class Signup < ActiveRecord::Base

  def event
    x = Event.find_by_id(self.event_id)
    return x.event_name
  end

end