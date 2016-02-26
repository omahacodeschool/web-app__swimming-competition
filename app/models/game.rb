class Game < ActiveRecord::Base

  def all_results
    return Result.where({"game_id" => self.id})
  end

  def get_winners
    x = Result.where({"game_id" => self.id})
    return x.order("completion_time ASC").limit(3)
  end
  
  def check_if_done
    x = Result.where({"game_id" => self.id})
    x.each do |r|
      if r.completion_time == 0
        return false
      end
    end
  end

end
