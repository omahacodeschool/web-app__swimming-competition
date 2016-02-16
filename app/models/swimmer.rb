class Swimmer < ActiveRecord::Base


  def race_result(water)
    x = SwimEntry.find_by_swimmer_id_and_race_id(self.id, water)
    x.id
    race_result = RaceResult.find_by_swim_entry_id(x.id)
    return race_result
  end

end