class School < ActiveRecord::Base
  def conference_name
    x = self.conference_id
    y = Conference.find_by_id(x)
  return y.conference_name
  end
end
