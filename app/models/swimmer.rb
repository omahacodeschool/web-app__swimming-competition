class Swimmer < ActiveRecord::Base
  def university
    x = self.university_id
    y = University.find_by_id(x)
    return y.university_name
  end
  def conference
    x = self.university_id
    y = University.find_by_id(x)
    z = Conference.find_by_id(y)
    if z != nil
      return z.conference_name
    else
      return nil
    end
  end
end