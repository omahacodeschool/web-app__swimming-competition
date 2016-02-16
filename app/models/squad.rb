class Squad < ActiveRecord::Base

  def all_gamers
    return Gamer.where({ "squad_id" => self.id })
  end
  
  def division_access
    x = self.division_id
    y = Division.find_by_id(x)
    return y
  end

end
