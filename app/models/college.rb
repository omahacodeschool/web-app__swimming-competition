class College < ActiveRecord::Base

  def get_conference
    x = self.conference_id
    return Conference.find_by_id(x)
  end
end