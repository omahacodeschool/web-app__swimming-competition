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

  def get_conference
    x = self.college_id
    y = College.find_by_id(x)
    return Conference.find_by_id(y)
  end

 def conference_name
    x = self.college_id
    y = College.find_by_id(x)
    z = Conference.find_by_id(y)
    return z.name
  end

end