class Activity < ActiveRecord::Base

  def delete_all_activity_results
    Result.where("activity_id" => self.id).delete_all
  end

  def get_activity_locked_status
    return self.locked == true ? "Locked" : "Unlocked"
  end

end