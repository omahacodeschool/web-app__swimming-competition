class Signup < ActiveRecord::Base
  def event_name
    x = self.event_id
    y = Event.find_by_id(x)
    return y.event_name
  end

  def swimmer_name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    return y.swimmer_name
  end
  
end