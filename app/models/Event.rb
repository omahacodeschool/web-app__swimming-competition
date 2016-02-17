class Event < ActiveRecord::Base

  def penguin_access
    x = self.penguin_id
    y = Penguin.find_by_id(x)
    y
  end


  def result_access
    x = self.event_id
    y = Event.find_by_id(x)
  end

  #Need algorithm to determine top 3 results for each event. I'm assumimg we'll use the result_access for this and use a handy method like max. However, I'm not sure how this works and how I'll go about determining the 2nd and 3rd place. Maybe this should all be done in "Results" model
  def top_3_results
    result_access.time.min
  end


end