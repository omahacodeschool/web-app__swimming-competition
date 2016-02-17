class Signup < ActiveRecord::Base

  def get_swimmer_name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
      if y == nil
        return "X"
      else 
        return y.swimmer_name
      end
  end

  def get_school_name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
      if y == nil
        return "X"
      else
        z = y.school_id
        a = School.find_by_id(z)
          if a == nil
            return "X"
          else
            return a.school_name
          end
      end
  end

  def get_event_name
    x = self.event_id
    y = Event.find_by_id(x)
      if y == nil
        return "X"
      else
        return y.event_name
      end
  end

  def get_conference_name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
      if y == nil
        return "X"
      else
        z = y.school_id
        a = School.find_by_id(z)
        if a == nil
          return "X"
        else
          e = a.conference_id
          f = Conference.find_by_id(e)
            if f == nil
              return "X"
            else
              return f.conference_name
            end

        end      
      end
  end

end
