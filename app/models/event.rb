class Event < ActiveRecord::Base

  # Return an Array containing all competitors for an event. 
  #(the Competitor Objects).
  def event_competitors
    x = self.id
    # how we search a table
    return Signup.where({"event_id" => x})
  end

end