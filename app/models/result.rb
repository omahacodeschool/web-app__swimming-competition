class Result < ActiveRecord::Base

  # This method returns an object in the Contestants Table
  def contestant
    chilies = Chili.find_by_id(self.chili_id)
    chilies.contestant_id
    contestant = Contestant.find_by_id(chilies.contestant_id)
    return contestant
  end

  def chili_name
    ch_obj = Chili.find_by_id(self.chili_id)
    return ch_obj.name
  end

  def competition
    comp_obj = Competition.find_by_id(self.competition_id)
    return comp_obj.name
  end
end

