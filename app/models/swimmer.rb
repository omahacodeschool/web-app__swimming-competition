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

  def delete_swimmer_from_race_results(dqswimmer)
    dq = SwimEntry.find_by_swimmer_id_and_race_id(self.id, dqswimmer)#dq should be comprised of AR objects that are each one line of the swim_entry table. 
    #IS THIS JUST DQ.DELETE?????????
    #return an array of swim entry objects
    dq.id #array of swim_entry ids for the disqualified swimmer
    result = RaceResult.find_by_swim_entry_id(dq.id)
    result.delete
  end

  def delete_swimmer_from_swim_entries(dqswimmer)
    dq = SwimEntry.find_by_swimmer_id_and_race_id(self.id, dqswimmer)
    #IS THIS JUST DQ DELETE????
    for each 
    dq.delete
  end


  #or am I going to have to find the swi




end