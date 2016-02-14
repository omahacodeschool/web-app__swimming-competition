class Competitor < ActiveRecord::Base

  def results
    @results = Result.where("competitor_id" => self.id)
    return @results
  end

end