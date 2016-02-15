class Rookery < ActiveRecord::Base

  def conference_access
    x = self.conference_id
    y = Conference.find_by_id(x)
    y
  end
end