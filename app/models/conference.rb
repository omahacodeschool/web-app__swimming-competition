class Conference < ActiveRecord::Base

  def delete_conference?
    x = self.id
    y = Team.where({"conference_id" => x })
    binding.pry
    if y.empty?
      return true
    else
      return false
    end
  end
end 