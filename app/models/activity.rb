class Activity < ActiveRecord::Base

  def delete_all_activity_results
    Result.where("activity_id" => self.id).delete_all
  end

  def get_activity_locked_status
    return self.locked == true ? "Closed" : "Open"
  end

  def get_activity_winners
    y = Result.where({"activity_id" => self.id})
    return y.order('score DESC').limit(3)
  end

end
