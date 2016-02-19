
class Result <ActiveRecord::Base

  #returns String (first name of competitor object)
  def display_competitor_first_name
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    return y.first_name
  end

  #returns String (last name of competitor object)
  def display_competitor_last_name
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    return y.last_name
  end

  #returns String (gender of event object)
  def display_event_gender
    x = self.event_id
    y = Event.find_by_id(x)
    return y.gender
  end

  #returns Integer (distance of event object)
  def display_event_distance
    x = self.event_id
    y = Event.find_by_id(x)
    return y.distance
  end

  #returns String (style of event object)
  def display_event_style
    x = self.event_id
    y = Event.find_by_id(x)
    z = y.style_id
    a = Style.find_by_id(z)
    return a.style
  end
  
end