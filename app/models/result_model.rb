

class Result <ActiveRecord::Base

  def display_competitor_first_name
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    return y.first_name
  end

  def display_competitor_last_name
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    return y.last_name
  end

  def display_event_gender
    x = self.event_id
    y = Event.find_by_id(x)
    return y.gender
  end

  def display_event_distance
    x = self.event_id
    y = Event.find_by_id(x)
    return y.distance
  end

  def display_event_style
    x = self.event_id
    y = Event.find_by_id(x)
    z = y.style_id
    a = Style.find_by_id(z)
    return a.style
  end

  def find_top_three_in_event
    empty_array = []
    #somehow separate results into one array for each event
    @results.each do |r|
      empty_aray << r.
      #create new array for each to push three largest values into
    end


      #master.group_by{|h| h[:group]}
  end
end