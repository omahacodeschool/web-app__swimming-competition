class Competitor < ActiveRecord::Base

  # Get the conference name to display w/ single college
  #
  # Return conference name String
  def coll_name
    x = self.college_id
    y = College.find_by_id(x)
    return y.college_name
  end

  def conf_name
    x = self.id
    return Conference.where({"college_id" => x})
  end
end