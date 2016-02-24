class Swimmer < ActiveRecord::Base
  #returns str of name of college
  def find_college_name
    x = self.college_id
    y = College.find_by_id(x)
    return y.college_name
  end

  def registered_events
    x = self.id
    y = Signup.where({"swimmer_id" => x})
    if y == []
      return "n/a"
    else
      events = []
      y.each do |event|
        events << event.event_id
      end
      return events
    end
  end


  def swimmer_name
    x = self.first_name
    y = self.last_name
    return x + " " + y
  end

  def finishtime(eventid)
    x = self.id
    y = Finish.find_by(swimmer_id: x, event_id: eventid)
    if y == nil
      return 0
    else
      return y.finish_time
    end
  end
  #this is new so test it (so many swimmer tests!)
  def register_errors(eventidarray)
    eventidarray.each do |event|
      a = Signup.find_by(swimmer_id: self.id, event_id: event)
      if a
        eventidarray.shift
      else
      end
    end 
  end
  #does this need new test? check coverage
  def register(eventidarray)
    array = self.register_errors(eventidarray)
    if array.empty? == false
      array.each do |event|
        s = Signup.new
        s.swimmer_id = self.id
        s.event_id = event
        s.save
      end
    else
    end
  end
  
  #will need tests for get_errors, set_erros, is_valid
  def get_errors
    self.set_errors
    return @errors
  end

  def set_errors
    @errors = []

    if self.first_name == "" || self.first_name == nil
      @errors << "Must include first name"
    end

    if self.last_name == ""|| self.last_name == nil
      @errors << "Must include last name"
    end

    if self.college_id == 0 || self.college_id == nil
      @errors << "Must choose a College"
    end

  end

  def is_valid
    self.set_errors

    if @errors.length > 0
      return false
    else
      return true
    end
  end

end