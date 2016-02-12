class Race < ActiveRecord:: Base

#Race table does not have swimmer information of any kind in it. 

#Race table has race ids, race names and start times.
#SwimEntry table has race ids paired with swimmer ids for any instance of one swimmer entering one race. It does not have swimmer names, only ids. 
#Swimmer has swimmer names (and other information) and swimmer ids.

#It has race numbers and names and start times. SwimEntry has swimmer ids paired with race numbers of races the swimmer has entered. From the Race class I would need to define a method. Swimmers is the only table with swimmer names. 

#SwimEntry does not have swimmer names, just the ids. So will I need another method in SwimEntry to return a hash of swimmer names and their swimmer ids?  

  def swimmers_ids_one_race
    n = self.swimmer_id #swimmer id listed in the swim_entry table
    s = SwimEntry.find_by_id(n) #method applied to class SwimEntry



  end

  def all_swimmer_names_one_race
    r = self.id
    n = SwimEntry.where({race_id => r}) #would return 

  end
  


end