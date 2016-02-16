class Signup < ActiveRecord::Base
  def find_event_name
    x = self.event_id
    y = Event.find_by_id(x)
    return y.event_name
  end

  def find_swimmer
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    return y
  end

  def find_swimmer_name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    return y.swimmer_name
  end

  def find_swimmer_college
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    return y.find_college_name
  end 
end