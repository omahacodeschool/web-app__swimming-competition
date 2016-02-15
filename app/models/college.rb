class College < ActiveRecord:: Base

# def conference_name
#     confid = self.id #a conference_id for which we want to have conference name. There isn't anything else in the conference table.
#     coll = Conference.where({"conference_id" => confid}) #anticipaing a hash where the key is the race_id and the value is the swim_entry_id
#     g=[] #empty array to populate with swimmer ids for race "r"
#     s.each do |swim_entry| #iterate through the swim_entry_ids
#       x = swim_entry.swimmer_id #to get just the swimmer_ids for race "r" for use in querying the swimmer table. "x" is the array object with all of the swimmer ids.
#       g.push(x) #push swimmer_ids "x" for race "r" into an Array
#     end #end of each do loop

#     return Swimmer.where({"id" => g})
#     #return g   #array of swimmer ids for one race
#   end #end of swimmer_ids_one_race method

  def conference_name_with_college #name of this new method
    conf = self.conference_id #conf is a collection of conference_ids in the College table that we will use to query the Conference database to get corresponding Conference names.
    confnam = Conference.find_by_id(conf) #iterating through the conference ids to find the conference names. We should actually be returning all of the conference information, but the only information in the conference table is the conference name. 
    return confnam 
  end #end of conference_name_with_college method

end

