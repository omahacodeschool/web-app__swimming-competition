class College < ActiveRecord::Base

  # Get the conference name to display w/ single college
  #
  # Return conference name String
  def conf_name
    x = self.conference_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end
end