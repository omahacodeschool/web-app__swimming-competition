class College < ActiveRecord::Base

  def get_conference
    x = self.conference_id
    return Conference.find_by_id(x)
  end

   def get_conference_name
    x = self.conference_id
    y =  Conference.find_by_id(x)
    return y ? y.name : nil
  end

  def set_conference_name(var)
    x = self.conference_id
    y =  Conference.find_by_id(x)
    y.name = var
  end

  def delete_all_competitor_results
    arr = []
    x = Competitor.where({"college_id" => self.id})
    x.each do |x|
      arr << x.id
    end

    arr.each do |x|
      Result.where({"competitor_id" => x}).delete_all
    end
  end

  def delete_all_competitors
    Competitor.where({"college_id" => self.id}).delete_all
  end

end

