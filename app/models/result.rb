class Result < ActiveRecord::Base
  def school_info
    x = self.school_id
    y = School.find_by_id(x)
    return y
  end

  #returns the school name when referencing the school id
  def school_name
  x = self.school_id
  y = School.find_by_id(x)
  return y.name
end
end