class School < ActiveRecord::Base

  def competitors
    competitors = Competitor.where("school_id" => self.id)
    return competitors
  end

  def conference
    c = Conference.find_by_id(self.conference_id)
    if c == nil
      return "No Data"
    else
      conference = c.conference
      return conference
    end
  end 

end