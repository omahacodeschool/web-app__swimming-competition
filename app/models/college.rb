class College < ActiveRecord::Base
  
  #find the conference of a college  
  #returns just the NAME of the college, not the college object 
  def find_conference_name
    x = self.conference_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end  

  #calls the array of error messages found in set errors
  def get_errors
    self.set_errors
    return @errors
  end

  #finds any missing information from a submitted "new college"
  #returns an array of the error MESSAGES 
  def set_errors
    @errors = []
    if self.college_name == "" || self.college_name == nil
      @errors << "Must include valid College name"
    end

    if self.conference_id == 0 || self.conference_id == nil
      @errors << "Must choose Conference"
    end
  end

  #tests if a submitted "new college" has all table info covered
  #returns boolean
  def is_valid
    self.set_errors

    if @errors.length > 0
      return false
    else
      return true
    end
  end
end