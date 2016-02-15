class EventDetail < ActiveRecord::Base
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
end