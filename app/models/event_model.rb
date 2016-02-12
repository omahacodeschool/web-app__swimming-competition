class Event < ActiveRecord::Base
  def display_all_competitors_in_event
    results = Result.all
    x = self.id
    y = results.where({"event_id" => x})
    return y
  end

  def display_competitor_first_name(x)
    y = Competitor.find_by_id(x)
    return y.first_name
  end

  def display_competitor_last_name(x)
    y = Competitor.find_by_id(x)
    return y.last_name
  end
end