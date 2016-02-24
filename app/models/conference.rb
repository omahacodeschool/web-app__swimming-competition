class Conference < ActiveRecord::Base
  def get_errors
    return @errors
  end

  def set_errors
    @errors = []
    if self.conference_name == ""
      @errors << "Conference name cannot be blank"
    end
  end

  def is_valid
    self.set_errors
    if @errors.length > 0
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