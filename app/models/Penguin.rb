class Penguin < ActiveRecord::Base

  def set_errors
    @errors = []

    if self.last_name == "" || self.last_name == nil
      @errors << "Penguin's last name cannot be blank!"
    end

    if self.first_name == "" || self.first_name == nil
      @errors << "Penguin's first name cannot be blank!"
    end

    if self.age == "" || self.age == nil
      @errors << "Penguin's age cannot be blank!"
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

  def rookery_access
    x = self.rookery_id
    y = Rookery.find_by_id(x)
    y
  end

  def delete_results
    Result.where("penguin_id" => self.id).delete_all
  end

end