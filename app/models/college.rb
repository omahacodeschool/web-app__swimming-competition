class College < ActiveRecord::Base

  def get_conference
    x = self.conference_id
    return College.find_by_id(x)
  end

end