class Signup < ActiveRecord::Base

  def get_swimmer_name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    return y.swimmer_name
  end

  def get_school_name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    z = y.school_id
    a = School.find_by_id(z)
    return a.school_name
  end

  def get_event_name
    x = self.event_id
    y = Event.find_by_id(x)
    return y.event_name
  end

  def score_all_events

  end

end