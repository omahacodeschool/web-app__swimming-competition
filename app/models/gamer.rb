class Gamer < ActiveRecord::Base

  def squad_access
    x = self.squad_id
    y = Squad.find_by_id(x)
    return y
    
end
