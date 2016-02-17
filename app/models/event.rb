class Event < ActiveRecord::Base

  # Return an Array containing all competitors for an event. 
  #(the Competitor Objects).
  def competitors
    # x = ("signups.id", "competitor_id")
    x = Signup.where({"event_id" => self.id})
    comps = []
    x.each do |e|
      # pushes each "competitor_id" into comps Array
      comps << e.competitor_id
    end
    # returns ("competitors.id", "competitor_name", "school_id")
    return Competitor.where({"id" => comps})
  end 
  
end