class Event < ActiveRecord::Base
 def get_errors
    return @errors
  end

  def set_errors
    @errors = []
    if self.event_name == ""
      @errors << "Event name cannot be blank"
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

  def event_details
    EventDetail.where({"event_id" => self.id})
  end
  def awards
    Award.where({"event_id" => self.id})
  end
  
  def is_complete
    x = EventDetail.where({"finish_time" => nil, "event_id" => self.id})
    if x.length == 0 
      return true
    else
      return false
    end   
  end
end