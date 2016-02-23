class Conference < ActiveRecord::Base
  def is_valid
    if self.conference_name == ""
      return false
    else
      return true
    end
  end

  #Return an Array containing all of a conference's College objects

  def conf_colleges
    x = self.id
    return College.where({"conference_id" => x})
  end
end