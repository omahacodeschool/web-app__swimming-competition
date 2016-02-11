class Result < ActiveRecord::Base

  def get_competitor
    x = self.competitor_id
    return Competitor.find_by_id(x)
  end

  def get_college
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    return College.find_by_id(y)
  end

  def get_conference
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    z = College.find_by_id(y)
    return Conference.find_by_id(z) 
  end

   def get_activity
    x = self.activity_id
    return Activity.find_by_id(x)
  end

end