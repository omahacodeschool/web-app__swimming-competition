class Event < ActiveRecord::Base

  def set_errors
    @errors = []

    if self.name == "" || self.name == nil
      @errors << "Event name cannot be blank!"
    end

    if self.start_time == nil
      @errors << "Event start time cannot be left blank!"
    end 

    if self.num_entries == nil
      @errors << "The number of entries for this event cannot be blank!"
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

end