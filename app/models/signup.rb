class Signup < ActiveRecord::Base
  def name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    return y.name
  end
  def event_name
    x = self.event_id
    y = Event.find_by_id(x)
    return y.event_name
  end
  def event
    x = self.event_id
    y = Event.find_by_id(x)
    return y
  end
end
