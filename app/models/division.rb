class Division < ActiveRecord::Base

  def all_squads
    return Squad.where({"division_id" => self.id})
  end

end
