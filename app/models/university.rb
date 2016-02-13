class University < ActiveRecord::Base
  #Return Aray of swimmers' names.
  def swimmer_name
    x = self.swimmer_id
    y = Swimmer.find_by(x)
    return y.name
  end

  #Return Aray of conference names.
  def conference
    x = self.conference_id
    y = Conference.find_by(x)
    return y.conference_name
  end
end
