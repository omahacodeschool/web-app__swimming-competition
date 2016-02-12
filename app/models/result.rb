class Result < ActiveRecord::Base
  def swimmer
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    return y.swimmer_name
  end
  def event
    x = self.event_id
    y = Event.find_by_id(x)
    return y.event_name
  end
end
