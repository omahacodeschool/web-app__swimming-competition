class Swimmer < ActiveRecord::Base


  def race_result(water)
    x = SwimEntry.find_by_swimmer_id_and_race_id(self.id, water)
    x.id
    race_result = RaceResult.find_by_swim_entry_id(x.id)
    return race_result
  end


  # def delete_race_result(dqswimmer) 
  #   dq = SwimEntry.find_by_swimmer_id_and_race_id(self.id, dqswimmer) #return swim entry objects 
  #   dq.id #array of swim_entry ids for the disqualified swimmer
  #   race_result = RaceResult.find_by_swim_entry_id(dq.id) #using swim entry ids to find race results for the disqualified swimmer 

  # def delete_swimmer_from_race_results
  #   dq = RaceResult.where({"swimmer_id" => self.id})
  #   dq.delete_all #array of swim_entry ids for the disqualified swimmer
  # end

  def delete_swimmer_from_swim_entries
    dq = SwimEntry.where({"swimmer_id" => self.id})
    dq.delete_all
  end

end