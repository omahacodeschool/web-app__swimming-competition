class Race < ActiveRecord:: Base

#Race table does not have swimmer information of any kind in it. 

#Race table has race ids, race names and start times.
#SwimEntry table has race ids paired with swimmer ids for any instance of one swimmer entering one race. It does not have swimmer names, only ids. 
#Swimmer has swimmer names (and other information) and swimmer ids. No races.

#So will I need another method in SwimEntry to return swimmer names and their swimmer ids? 

  def list_of_swimmers
    r = self.id #a race_id we want to have swimmer info about.
    s = SwimEntry.where({"race_id" => r}) #anticipaing a hash where the key is the race_id and the value is the swim_entry_id
    g=[] #empty array to populate with swimmer ids for race "r"
    s.each do |swim_entry| #iterate through the swim_entry_ids
      x = swim_entry.swimmer_id #to get just the swimmer_ids for race "r" for use in querying the swimmer table. "x" is the array object with all of the swimmer ids.
      g.push(x) #push swimmer_ids "x" for race "r" into an Array
    end #end of each do loop

    return Swimmer.where({"id" => g})
    #return g   #array of swimmer ids for one race
  end #end of swimmer_ids_one_race method
  
end #end of Race class