class College < ActiveRecord::Base

  def get_conference
    x = self.conference_id
    return Conference.find_by_id(x)
  end

   def get_conference_name
    x = self.conference_id
    y =  Conference.find_by_id(x)
    return y.name
  end

  def set_conference_name(var)
    x = self.conference_id
    y =  Conference.find_by_id(x)
    y.name = var
  end
end

