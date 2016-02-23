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

  def register(eventidarray)
    eventidarray.each do |event|
      s = Signup.new
      s.swimmer_id = self.id
      s.event_id = event
      s.save
    end
  end

  def get_errors
    self.set_errors
    return @errors
  end

  def set_errors
    @errors = []

    if self.first_name == ""
      @errors << "Must include first name"
    end

    if self.last_name == ""
      @errors << "Must include last name"
    end

    if self.college_id == 0
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