class Competitor < ActiveRecord::Base

  def competitors_results
    @results = Results.find_by_id(params["competitor_id"])
    return @results
  end

end