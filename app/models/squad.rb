class Squad < ActiveRecord::Base

  def all_gamers
    return Gamer.where({ "squad_id" => self.id })
  end
  
  def delete_all_gamers_results
    x = Gamer.where({ "squad_id" => self.id })
    x.each do |g|
      Result.where({"gamer_id" => g.id }).delete_all
    end
  end

  def division_access
    x = self.division_id
    y = Division.find_by_id(x)
    return y
  end

end
