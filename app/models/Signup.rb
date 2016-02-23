class Signup < ActiveRecord::Base

  def self.sort_signups_for_viewing_table

    sorted_signup_records = []

    self.all.each do |x| 

      signup_records = []

      signup_records << x.id

      name = x.get_swimmer_name
        if name == nil
          name = "X"
        end

      signup_records << name

      school = x.get_school_name
        if school == nil
          school = "X"
        end

      signup_records << school

      event = x.get_event_name
        if event == nil
          event = "X"
        end

      signup_records << event

      time = x.completed_swim_time
        if time == nil
          time = "Not Yet Scored"
        end

      signup_records << time

      sorted_signup_records << signup_records
      end
      return sorted_signup_records
  end


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
