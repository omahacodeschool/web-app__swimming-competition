class Rookery < ActiveRecord::Base

  def conference_name
    x = self.conference_id
    y = Conference.find_by_id(x)
    y.name
  end
end