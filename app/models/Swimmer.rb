class Swimmer < ActiveRecord::Base

  def get_school_name
    x = self.school_id
    y = School.find_by_id(x)
    return y.name
  end

  def get_conference_name
    x = self.school_id
    y = School.find_by_id(x)
    return y.name
  end



 end
