class SwimEntry < ActiveRecord::Base


#This method should return the entire line of swimmer information for each swimmer who has one of the swimmer_ids tied to a particular race.
  def swimmer_names_one_race #name of this new method
    u = self.swimmer_id #u is a collection of swimmer_ids we will use to query the Swimmer database about their names and other information.
    y = Swimmer.find_by_id(u) #iterating through the swimmer ids to find the swimmer names. Really what we should return is all of the information for a particular swimmer id. Question: are ".where" and ".find_by_something" two ways to do the same thing? Is there a difference? 
    return y #(Sumeet said it is ok to get the whole line of information)
  end #end of swimmer_names_one_race method
end #end of class SwimEntry