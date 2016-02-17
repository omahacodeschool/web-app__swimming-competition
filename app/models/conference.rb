class Conference < ActiveRecord::Base

  def delete_conference?
    x = self.id
    y = Team.find_by_id(x)
    if y == false
      return true
    else
      return false
    end
  end
end