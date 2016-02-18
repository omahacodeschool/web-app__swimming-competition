class Result < ActiveRecord::Base

  # This method returns an object in the Contestants Table
  def contestant
    chilies = Chili.find_by_id(self.chili_id)
    chilies.contestant_id
    contestant = Contestant.find_by_id(chilies.contestant_id)
    return contestant
  end
end
