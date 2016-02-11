class Event < ActiveRecord::Base

  # Return an Array containing all competitors. (the Competitor Objects).
  def all_competitors
    x = self.id
    # how you search a table
    return Competitors.where({"event_id" => x})
  end

end