class Swimmer < ActiveRecord::Base


  def race_result(water)
    x = SwimEntry.find_by_swimmer_id_and_race_id(self.id, water)
    x.id
    race_result = RaceResult.find_by_swim_entry_id(x.id)
    return race_result
  end


  #Set a swimmer's races. 
  #takes input of an Array of race ids
  #Return Nil
  def swim_entries_one_swimmer(array_of_event_ids)
    #make a new row in the swim-entry table with a race id and a swimmer id
    array_of_race_ids.each do |event_id|
      swim_entry_row = SwimEntry.new
      swim_entry_row.event_id = event_id
      swim_entry_row.swimmer_id = self.id
      swim_entry_row.save
    end
    return nil
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
