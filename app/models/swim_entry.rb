class SwimEntry < ActiveRecord:: Base
end

#maybe Class SwimEntry
#This method should return the entire line of swimmer information for each swimmer who has one of the swimmer_ids tied to a particular race.
  def swimmer_names_one_race
    u = self.swimmer_id
    y = Swimmer.find_by_name(u) #diff between ".where" and "find_by_something"?
    return y #(Sumeet said it is ok to get the whole line of information)
  end
