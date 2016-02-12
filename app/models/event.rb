class Event < ActiveRecord::Base
  #return an array that displays all those in this event
  def all_swimmers
    x = self.id
    return Swimmer.where({"event_id" => x})
  end
end