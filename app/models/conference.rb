class Conference < ActiveRecord::Base

  def delete_all_competitor_results
    college_ids = []
    competitor_ids = []
    x = College.where({"conference_id" => self.id})
    
    x.each do |x|
      college_ids << x.id
    end

    college_ids.each do |id|
      y = Competitor.where({"college_id" => id})
      competitor_ids << y.id
    end

    competitor_ids.each do |id|

      Result.where ({"competitor_id" => id}).delete_all
    end
  end

  def delete_all_competitors
    college_ids = []
    x = College.where({"conference_id" => self.id})
    x.each do |x|
      college_ids << x.id
    end

    college_ids.each do |id|
      Competitor.where ({"college_id" => id}).delete_all
    end
  end

  def delete_all_colleges
    College.where({"conference_id" => self.id}).delete_all
  end

end