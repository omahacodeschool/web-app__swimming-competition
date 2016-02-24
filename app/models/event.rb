class Event < ActiveRecord::Base

  # Return an Array of Competitor Objects for an event.
  def runners
    registration_objects = Registration.where({"event_id" => self.id})
    runners_arr = []
    registration_objects.each do |o|
      runners_arr << o.runner
    end
    return runners_arr
  end 
  
end