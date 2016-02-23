class Result < ActiveRecord::Base

  def competitor_name
    name = Competitor.find_by_id(self.competitor_id)
    full_name = name.first_name.capitalize + " " + name.last_name.capitalize
    return full_name
  end

  def event_name
    event_name = Event.find_by_id(self.event_id)
    event = event_name.event
    return event
  end

  def event_locked
    locked = Event.find_by_id(self.event_id)
    locked = locked.locked
    return locked
  end

  def event_type
    events = Event.all
    result = Hash.new(0)
    events.each {|event| result[event] += 1 }
    event_hash = result
    event_list_arr = event_hash.keys.each{|key| key}
    return event_list_arr
  end
    

end
