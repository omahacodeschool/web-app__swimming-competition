class College < ActiveRecord::Base

  #The College table has a conference_id column that is a foreign key for the Conference table. Need to use the conference_id to get the conference_name from the Conference table. 
  
  #Get the conference name for a college using the conference_id in the college table.
  #
  #
  # Returns a String of the conference name for 1 college. Seems like something is missing.
  def conference 
    confid = self.conference_id #confid is the conference_ids in the college table that we will use to query the conference table to get corresponding Conference names.
    confnam = Conference.find_by_id(confid) #iterating through the conference ids to find the conference names. We should actually be returning all of the conference information, but the only information in the conference table is the conference name. 
    return confnam
  end #end of conference_name method

 






  #Purpose - Return the conference name for a conference id. 
  #
  #Return - An AR Relation (Array) 

  #If we are finding all of the conferences for one college, there will only be 1. 


    def conference_name_match
      confid=Conference.where ({conference_id => self.id})#hash of data from the college table with the conference id as the key and the college id as the value.
      conference_ids = [] #to get an array w just ids of the right conferences
      confid.each do |coll| #(coll for colleges I guess)
x = conference_id
      
  conference_ids<<confid.conference_id #an ARecord Relation of just one conference ID object? have an array with just #1 and #2 from actor ID column)
  end

  #Now to get the rows in the conferences table for these ids

  Conference.where({“id” =>conference_ids}) #will search for names of conferences that match the conference ids in the college table.
  end

end
    