class Conference < ActiveRecord::Base

  #Purpose: Get a list of the colleges from a specific conference that are in the meet.
  #
  #Returns: An Array of the colleges from a specific conference. 
  def participating_colleges 
    confid = self.id  #conference ids in the conference table. The conference_id is also a foreign key in the college table.
    return College.where({"conference_id" => confid})
  end
end