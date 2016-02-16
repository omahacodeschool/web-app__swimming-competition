class Game < ActiveRecord::Base

  def all_results
    return Result.where({"game_id" => self.id})
  end

end
