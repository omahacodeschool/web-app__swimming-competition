class Signup < ActiveRecord::Base

  def get_swimmer_name
    y = Swimmer.find_by_id(self.swimmer_id) 
      return y.swimmer_name
  end

  def get_school_name
    y = Swimmer.find_by_id(self.swimmer_id)
    a = School.find_by_id(y.school_id)
      return a.school_name
  end

  def get_event_name
    y = Event.find_by_id(self.event_id)
      return y.event_name
  end

  def get_conference_name
    y = Swimmer.find_by_id(self.swimmer_id)
    a = School.find_by_id(y.school_id)
    f = Conference.find_by_id(a.conference_id)
      return f.conference_name
  end

end
