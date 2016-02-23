class College < ActiveRecord::Base
  def is_valid
    if self.college_name == "" || self.conference_id == nil
      return false
    else
      return true
    end
  end

  # Get the conference name to display w/ single college
  #
  # Return conference name String
  def conf_name
    x = self.conference_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end
end