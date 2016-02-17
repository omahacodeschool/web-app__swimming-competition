class Run < ActiveRecord::Base
  @runs = Run.all

  def run_swimmer
    a = self.swimmer_id
    b = Swimmer.find_by_id(a)

    return b.swimmer_name
  end

  def run_event
    a = self.event_id
    b = Event.find_by_id(a)

    return b.event_name
  end
end