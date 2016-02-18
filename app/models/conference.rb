class Conference < ActiveRecord::Base

  #Return an Array containing all of a conference's College objects

  def conf_colleges
    x = self.id
    return College.where({"conference_id" => x})
  end

  def get_deleted
    
  end
end