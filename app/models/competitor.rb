class Competitor < ActiveRecord::Base
  
  #RETURNS College Object based on foreign key in Competitor Table
  def get_college
    x = self.college_id
    return College.find_by_id(x)
  end

  def get_conference
    x = self.college_id
    y = College.find_by_id(x)
    return Conference.find_by_id(y)
  end
end