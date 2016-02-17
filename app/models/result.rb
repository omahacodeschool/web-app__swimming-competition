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
#Returns String for the name of event.
  def event
    x = self.event_id
    y = Event.find_by_id(x)
    if y!= nil
      return y.event_name
    else
      return nil
    end
  end
#Returns Boolean value of the event_locked column in the Events table.
  def event_locked?
    x = self.event_id
    y = Event.find_by_id(x)
    return y.event_locked
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
#Arranges all swimmers in descending order according to their times.  Returns Array of the three swimmers with the fastest times.
  def Result.top_swimmers
    sorted = self.order("swimmer_time").to_a 
    top_three = []
    if sorted.length >= 3
      3.times do 
        top_three << sorted.shift
      end
      return top_three
    else
      return nil
    end
  end
#Checks events table for duplicate swimmer id in the same event. Return True if swimmer is already in event, return False if they are not.
  def Result.duplicate_swimmer?
    x = self.where({})
    duplicate = nil
    self.each do |i|
      if i.swimmer_id == x
        duplicate = true
        break
      else
        duplicate = false
      end
    end
    return duplicate
  end
end






