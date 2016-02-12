class Result < ActiveRecord::Base

def event_name
    e = Event.find_by_id(self.event_id)
    e.event
  end

  def first_name
    f_name = Competitor.find_by_id(self.competitor_id)
    f_name.first_name
  end

  def last_name
    l_name = Competitor.find_by_id(self.competitor_id)
    l_name.last_name
  end
  
end