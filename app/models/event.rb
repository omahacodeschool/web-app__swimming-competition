class Event < ActiveRecord::Base

  def event_over?
    eventid = self.id
    x = Signup.where({"event_id" => eventid})
    y = Finish.where({"event_id" => eventid})
    if x.length == 0
      return false
    elsif x.length - y.length == 0
      return true
    else
      return false
    end
  end

  def locked_status
    x = self.locked
    if x == true
      return "Locked"
    elsif x != true
      return "Unlocked"
    end
  end

  def self.locked_events
    e = Event.where("locked" => true)
    return e
  end

  def self.unlocked_events
    e = Event.where("locked" => false)
    return e
  end
end

#DB.define_table("events")
#DB.define_column("events","event_name","string")
#DB.define_column("events","locked","boolean")
