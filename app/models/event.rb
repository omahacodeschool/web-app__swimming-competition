class Event < ActiveRecord::Base

  def event_over?
    eventid = self.id
    x = Signup.where({"event_id" => eventid})
    y = Finish.where({"event_id" => eventid})
    if x.length - y.length == 0
      return true
    else
      return false
    end
  end

  def event_locked?
    if self.locked == true
      return true
    else
      return false
    end
  end

end

#DB.define_table("events")
#DB.define_column("events","event_name","string")
#DB.define_column("events","locked","boolean")
