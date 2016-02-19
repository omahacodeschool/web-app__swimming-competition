class Event < ActiveRecord::Base

  # Return an Array of Competitor Objects for an event.
  def competitors
    x = Signup.where({"event_id" => self.id})
    comps = []
    x.each do |e|
      comps << e.competitor
    end
    return comps
  end 
  
end