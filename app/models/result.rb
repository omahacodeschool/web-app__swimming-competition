class Result < ActiveRecord::Base
  def swimmer
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    if y!= nil
      return y.swimmer_name
    else
      return nil
    end
  end
  def event
    x = self.event_id
    y = Event.find_by_id(x)
    if y!= nil
      return y.event_name
    else
      return nil
    end
  end
  def university
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    z = University.find_by_id(y.university_id)
    if z!= nil
      return z.university_name
    else
      return nil
    end 
  end
  def conference
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    z = University.find_by_id(y.university_id)
    a = Conference.find_by_id(z.conference_id)
    if a!= nil
      return a.conference_name
    else
      return nil
    end
  end
end
