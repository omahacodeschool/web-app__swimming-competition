class Event < ActiveRecord::Base

  # Return an Array containing all competitors for an event. 
  #(the Competitor Objects).
  def event_competitors
    return ["Red", "White", "Blue"]
  end

end