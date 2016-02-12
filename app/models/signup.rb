class Signup < ActiveRecord::Base
  def find_event_name
    x = self.event_id
    y = Event.find_by_id(x)
    return y.event_name
  end

  def find_swimmer_name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    name = y.first_name + " " + y.last_name
    return name
  end
  
end