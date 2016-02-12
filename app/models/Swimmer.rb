class Swimmer < ActiveRecord::Base

  def get_all_events

    @swim_id = self.id
    event_ids = []

    a = Results.where ({"swimmer_id" => @swim_id})
    

    a.each do |r|
      event_ids << r.event_ids
    end 
    
    events = []

    event_ids.each do |e|
    events << Event.find_by_id(e)
    end

  end

end
