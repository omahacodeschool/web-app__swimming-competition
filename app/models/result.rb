class Result < ActiveRecord::Base

  def game_access
    x = self.game_id
    y = Game.find_by_id(x)
    return y
  end

  def gamer_access
    x = self.gamer_id
    y = Gamer.find_by_id(x)
    return y
  end


end