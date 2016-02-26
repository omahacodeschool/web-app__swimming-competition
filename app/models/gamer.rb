class Gamer < ActiveRecord::Base

  def all_results
    return Result.where({"gamer_id" => self.id})
  end

  def squad_access
    x = self.squad_id
    y = Squad.find_by_id(x)
    return y
  end

  def division_access
    x = self.squad_access.division_id
    y = Division.find_by_id(x)
    return y
  end
  
end
