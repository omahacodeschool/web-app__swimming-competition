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
  
  #loop through an array and set each value as new signups
  #add a new line in signup for each event id

end

