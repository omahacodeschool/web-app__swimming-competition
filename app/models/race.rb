class Race < ActiveRecord:: Base

#Race table does not have swimmer information of any kind in it. 

#Race table has race ids, race names and start times.
#SwimEntry table has race ids paired with swimmer ids for any instance of one swimmer entering one race. It does not have swimmer names, only ids. 
#Swimmer has swimmer names (and other information) and swimmer ids. No races.

#So will I need another method in SwimEntry to return a hash of swimmer names and their swimmer ids? 

  def swimmer_ids_one_race
    r = self.id #
    s = SwimEntry.where({race.id => r}) #(would that give me back the swimmer ids for all of the swimmers in one race?)
    return s
  end
  


end