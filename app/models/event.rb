class Event < ActiveRecord::Base

  # Return an Array containing all competitors for an event. 
  #(the Competitor Objects).
  def competitors
    # get Signup object(s) where "Signup.event_id" => "Event.id"
    # Signup objects include "Signup.id", "event_id", "competitor_id"
    x = Signup.where({"event_id" => self.id})
    comps = []
    x.each do |e|
      # push each Integer "competitor_id" into comps Array
      comps << e.competitor_id
    end
    # return Competitor object(s) where "Competitor.id" => "Signup.competitor_id" 
    return Competitor.where({"id" => comps})
  end 
  
end