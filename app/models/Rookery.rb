class Rookery < ActiveRecord::Base

  def set_errors
    @errors = []
    if self.name == "" || self.name == nil
      @errors << "Rookery name cannot be blank!"
    end 
    if self.conference_id == "" || self.conference_id == nil
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
  


  def conference_access
    x = self.conference_id
    y = Conference.find_by_id(x)
    y
  end

  def delete_penguins
    Penguin.where("rookery_id" => self.id).delete_all
  end
end