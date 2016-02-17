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

  def top_3
    result_access.time.max
  end


end