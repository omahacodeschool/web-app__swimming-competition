class Signup < ActiveRecord::Base

  def competitor
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    return y
  end

end