class Activity < ActiveRecord::Base

  def delete_all_activity_results
    Result.where("activity_id" => self.id).delete_all
  end

  def get_activity_locked_status
    return self.locked == true ? "Closed" : "Open"
  end

  def get_activity_winners
    y = Result.where({"activity_id" => self.id}).where.not({"score" => nil})
    return y.order('score DESC').limit(3)
  end

  def activity_already_exists_error
    return "That Activity already exists. Please add a new activity
     or edit your preexisting activity"
  end

end
