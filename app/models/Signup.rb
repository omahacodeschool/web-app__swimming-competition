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

  def get_conference_name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    z = y.school_id
    a = School.find_by_id(z)
    e = a.conference_id
    f = Conference.find_by_id(e)
    return f.conference_name
  end
  
#returns an array of ordered arrays, that have been checked for nil values. algorithm sets each to an "X" or "Not Yet Scored" if nil.

  def self.return_all_signups
      @sorted_signup_records = []

      r = self.all
      r.each do |x|
        @signup_records = []

        primary_key = x.id
        @signup_records << primary_key

        name = x.get_swimmer_name
          if name == nil
            name = "X"
          end
        @signup_records << name

        school = x.get_school_name
          if school == nil
            school = "X"
          end
        @signup_records << school
   
        event = x.get_event_name
          if event == nil
            event = "X"
          end
        @signup_records << event

        time = x.completed_swim_time
          if time == nil
            time = "Not Yet Scored"
          end
        @signup_records << time
        @sorted_signup_records << @signup_records
        return @sorted_signup_records
      end
    end
end
