class Event < ActiveRecord::Base
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