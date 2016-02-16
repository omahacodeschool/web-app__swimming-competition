class Result < ActiveRecord::Base

  def competitor_name
    name = Competitor.find_by_id(self.competitor_id)
    return name
  end

  def event_name
    event_name = Event.find_by_id(self.event_id)
    event = event_name.event
    return event
  end

end