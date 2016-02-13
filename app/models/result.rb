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
  def university
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    z = University.find_by_id(y)
    return z.university_name
  end
  def conference
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    z = University.find_by_id(y)
    a = Conference.find_by_id(z)
    return a.conference_name
  end
end
