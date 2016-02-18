class College < ActiveRecord::Base

  #The College table has a conference_id column that is a foreign key for the Conference table. Need to use the conference_id to get the conference_name from the Conference table. 
  
  #Get the conference name for a college using the conference_id in the college table.
  #
  #
  # Returns a String of the conference name for 1 college. Seems like something is missing.
  def conference 
    confid = self.conference_id #confid is the conference_ids in the college table that we will use to query the conference table to get corresponding conference names.
    confnam = Conference.find_by_id(confid) #iterating through the conference ids to find the conference names. We should actually be returning all of the conference information, but the only information in the conference table is the conference name. 
    return confnam
  end #end of conference_name method

  def locked_college
    lokid = self.

  
end #end of the college class
    