class College < ActiveRecord::Base
  
  #find the conference of a college   
  def find_conference_id
    x = self.conference_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end
  
end