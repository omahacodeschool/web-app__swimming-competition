class Swimmer < ActiveRecord::Base
  def university
    x = self.university_id
    y = University.find_by_id(x)
    return y.university_name
  end
end