class Conference < ActiveRecord::Base

  def del_conference_check
    
    if self.teams.any?
      false
    else
      self.delete
    end

  end

  def teams
    x = self.id
    Team.where({"conference_id" => x})
  end
end