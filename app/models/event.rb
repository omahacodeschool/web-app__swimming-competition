class Event < ActiveRecord::Base
  @events = Event.all

  def event_runs

    Run.where({"event_id" => self.id})
  end

end