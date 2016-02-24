class EventDetail < ActiveRecord::Base
  def is_valid
    if self.event_id == "" || self.competitor_id == "" || self.finish_time == "" 
      return false
    else
      return true
    end
  end

  def event_name
    if self.event_id == nil
      return ""
    else
      Event.find_by_id(self.event_id).event_name
    end
  end
  
  def competitor_name
    if self.competitor_id == nil
      return ""
    else
      Competitor.find_by_id(self.competitor_id).competitor_name
    end
  end
 
  def is_locked # NOT BEING USED RIGHT NOW
    x = Event.find_by_id(self.event_id)
    return x.locked
  end
end