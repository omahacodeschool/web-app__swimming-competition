class Conference < ActiveRecord::Base

  def delete_conference?
    x = self.id
    y = SwimmerInfo.find_by_id(x)
    if y == nil
      return true
    else
      return false
    end
  end
end