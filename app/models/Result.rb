class Result < ActiveRecord::Base
  def penguin_access
    x = self.penguin_id
    y = Penguin.find_by_id(x)
    y
  end
  
  def event_access
    x = self.event_id
    y = Event.find_by_id(x)
    y    
  end
end