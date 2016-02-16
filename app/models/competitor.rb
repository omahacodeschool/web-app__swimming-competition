class Competitor < ActiveRecord::Base
  has_many :results
  #RETURNS College Object based on foreign key in Competitor Table

  def get_college_name
    x = self.college_id
    y = College.find_by_id(x)
    return y ? y.name : nil
  end

  def set_college_name(var)
    x = self.college_id
    y = College.find_by_id(x)
    y.name = var
  end

 def get_conference_name
    x = self.college_id
      y = College.find_by_id(x)
      z = y.conference_id
      zz = Conference.find_by_id(z)
      return zz ? zz.name : nil
 end

end