class Competitor < ActiveRecord::Base
  
  #RETURNS College Object based on foreign key in Competitor Table
  def get_college
    x = self.college_id
    return College.find_by_id(x)
  end

  def college_name
    x = self.college_id
    y = College.find_by_id(x)
    return y.name
  end

 def set_conference_name
    x = self.college_id
    y = College.find_by_id(x)
    z = y.conference_id
    zz = Conference.find_by_id(z)
  end

 def get_conference_name
    x = self.college_id
    y = College.find_by_id(x)
    z = y.conference_id
    zz = Conference.find_by_id(z)
    return zz.name
  end

end