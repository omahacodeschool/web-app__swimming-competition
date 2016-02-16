class Activity < ActiveRecord::Base

  def delete_all_activity_results
    Result.where("activity_id" => self.id).delete_all
  end

end