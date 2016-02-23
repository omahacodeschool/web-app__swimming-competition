class Conference < ActiveRecord::Base

  def set_errors
    @errors = []
    if self.name == "" || self.name == nil
      @errors << "Conference name cannot be blank!"
    end 
  end 

  def get_errors
    return @errors
  end

  def is_valid
    self.set_errors
    if @errors.length > 0
      return false
    else
      return true
    end
  end 

  def has_a_rookery?
    x = Rookery.where("conference_id" => self.id).first
      if x != nil
        true
      else 
        false
      end
  end
  
end