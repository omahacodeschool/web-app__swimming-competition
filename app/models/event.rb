class Event < ActiveRecord::Base

  def competitor_name
    x = self.competitor_id
    @competitor = Competitor.find_by_id(x)
    return @competitor
    binding.pry
  end

  def all_competitors
    x = self.id 
    return Competitor.where({"event_id" => x})
  end
end