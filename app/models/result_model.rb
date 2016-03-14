
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

  def set_errors
    @errors = []
    if self.event_id == nil || self.event_id == ""
      @errors << "Event id cannot be blank."
    end
    if self.competitor_id == nil || self.competitor_id == ""
      @errors << "Competitor id cannot be blank."
    end
    if self.final_time == nil || self.final_time == ""
      @errors << "Final time cannot be blank."
    end
  end
  
  def is_valid?
    self.set_errors
    if @errors.length > 0
      return false
    else
      return true
    end
  end

  def get_errors
    return @errors
  end
end