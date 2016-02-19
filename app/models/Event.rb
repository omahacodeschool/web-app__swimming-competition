class Event < ActiveRecord::Base

  def self.get_all_event_names
    all_event_names = []
    Event.all.each do |s|
      x = s.event_name
      all_event_names << x
    end
      return all_event_names
  end

end