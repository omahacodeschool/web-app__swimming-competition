class College < ActiveRecord::Base
  
  #find the conference of a college   
  def find_conference_name
    x = self.conference_id
    y = Conference.find_by_id(x)
    return y.conference_name
  end  

  #will need tests for get_errors, set_errors, is_valid
  def get_errors
    self.set_errors
    return @errors
  end

  def set_errors
    @errors = []
    if self.college_name == "" || self.college_name == nil
      @errors << "Must include valid College name"
    end

    if self.conference_id == 0 || self.conference_id == nil
      @errors << "Must choose Conference"
    end
  end

  def is_valid
    self.set_errors

    if @errors.length > 0
      return false
    else
      return true
    end
  end
end