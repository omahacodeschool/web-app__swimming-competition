class Signup < ActiveRecord::Base

 def event
    return Event.where({"id" => self.event_id})
  end 

end