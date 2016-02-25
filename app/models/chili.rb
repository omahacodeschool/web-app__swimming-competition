class Chili < ActiveRecord::Base
  def contestant
    cont_obj = Contestant.find_by_id(self.contestant_id)
    return cont_obj
  end


end