class Swimmer < ActiveRecord::Base

  def get_school_name
    x = self.school_id
    y = School.find_by_id(x)
    return y.school_name
  end
  
 end
