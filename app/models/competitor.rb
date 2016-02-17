class Competitor < ActiveRecord::Base

  # Get the conference name to display w/ single college
  #
  # Return conference name String
  def coll_name
    return coll.college_name
  end

  def conf_name
    z = coll.conference_id
    a = Conference.find_by_id(z)
    return a.conference_name
  end

  def coll
    x = self.college_id
    y = College.find_by_id(x)
  end
  
end