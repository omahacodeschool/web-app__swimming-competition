class Competitor < ActiveRecord::Base
  def get_errors
    return @errors
  end

  def set_errors
    @errors = []
    if self.competitor_name == ""
      @errors << "Competitor name cannot be blank"
    end
    if self.college_id == nil
      @errors << "College ID cannot be blank"
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

  # Get the conference name to display w/ single college
  #
  # Return conference name String
  def coll_name
    return coll.college_name
  end

  def conf_name
    z = coll.conference_id
    a = Conference.find_by_id(z)
    return a.conference_name
  end

  def coll
    x = self.college_id
    y = College.find_by_id(x)
  end
  
end