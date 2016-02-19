class University < ActiveRecord::Base

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
