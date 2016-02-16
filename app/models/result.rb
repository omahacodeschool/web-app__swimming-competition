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
end

#This is working code. Paste this into the controller if things go bad
  # @sorted = @results.order("swimmer_time").to_a 
  # @top_three = []
  #   3.times do 
  #     @top_three << @sorted.shift
  # end



    # if sorted.length < 3
    #   top_three = []
    # else 






