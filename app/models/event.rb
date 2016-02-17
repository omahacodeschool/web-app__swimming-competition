class Event < ActiveRecord::Base

  # Return an Array containing all competitors for an event. 
  #(the Competitor Objects).
  def competitors
    x = Signup.where({"event_id" => self.id})
    # x = ("signups.id", "competitor_id")
    comps = []
    x.each do |e|
      comps << e.competitor_id
      # pushes each "competitor_id" into comps Array
    end
    return Competitor.where({"id" => comps})
    # returns ("competitors.id", "competitor_name", "school_id")
  end 
  
end