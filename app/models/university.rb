class University < ActiveRecord::Base
  #Return Aray of swimmers' names.
  #Actually not convinced this method does anything.
  # def swimmer_name
  #   x = self.swimmer_id
  #   y = Swimmer.find_by_id(x)
  #   return y.swimmer_name
  # end

  #Return a String for conference name of University this method is called on.
  def conference
    x = self.conference_id
    y = Conference.find_by_id(x)
    if y != nil
      return y.conference_name
    else
      return nil
    end
  end
end
