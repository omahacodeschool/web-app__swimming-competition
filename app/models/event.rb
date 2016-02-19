class Event < ActiveRecord::Base

  # Return an Array of Competitor Objects for an event.
  def competitors
    signup_objects = Signup.where({"event_id" => self.id})
    competitors_arr = []
    signup_objects.each do |e|
      competitors_arr << e.competitor
    end
    return competitors_arr
  end 

  def results
    signup_objects = Signup.where({"event_id" => self.id})
    results_arr =[]
    signup_objects.each do |s|
      results_arr << s.result
    end
    return results_arr
  end
  
end