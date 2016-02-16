class Event < ActiveRecord::Base

  # Return an Array containing all competitors for an event. 
  #(the Competitor Objects).
  def competitors
    signups_for_this_event = Signup.where({"event_id" => self.id})
    comps = []
    signups_for_this_event.each do |e|
      comps << e.competitor_id
    end
    return Competitor.where({"id" => comps})
  end

  def school_name
    x = self.school_id
    y = School.find_by_id(x)
    return y.school_name
  end

  def conf_name
    x = self.conference_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end  
  
end