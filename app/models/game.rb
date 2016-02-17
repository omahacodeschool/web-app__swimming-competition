class Game < ActiveRecord::Base

  def all_results
    return Result.where({"game_id" => self.id})
  end

  def get_winners
    x = Result.where({"game_id" => self.id})
    return x.order("completion_time DESC").limit(3)
  end
  
end
