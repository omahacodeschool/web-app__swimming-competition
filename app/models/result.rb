class Result < ActiveRecord::Base

  def competitor_name
    f_name = Competitor.find_by_id(self.competitor_id)
    f_name.first_name
    l_name = Competitor.find_by_id(self.competitor_id)
    l_name.last_name
    return f_name.first_name + " " + l_name.last_name
  end

end