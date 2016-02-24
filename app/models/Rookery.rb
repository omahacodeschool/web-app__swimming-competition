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
  

  def conference_access
    x = self.conference_id
    y = Conference.find_by_id(x)
    y
  end


  def delete_penguins
    penguins_to_delete = Penguin.where("rookery_id" => self.id)
    penguins_to_delete.each do |penguin|
      penguin.delete_results
      penguin.delete
    end
  end
end