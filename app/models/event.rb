class Event < ActiveRecord::Base

  # Return an Array containing all competitors for an event. 
  #(the Competitor Objects).
  def competitors
    signups_for_this_event = Signup.where({"event_id" => self.id})
    comps = []
    signups_for_this_event.each do |e|
      comps << e.competitor_id
    end
    binding.pry
    return Competitor.where({"id" => comps})
  end
end