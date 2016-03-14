class Event < ActiveRecord::Base
  #returns String (name of style of event object)
  def display_style_of_event
    x = self.style_id
    z = Style.find_by_id(x) #returns style object with id of events wanted
    return z.style
  end

  def set_errors
    @errors = []
    if self.gender == nil
      @errors << "Gender cannot be blank."
    end
    if self.distance == nil
      @errors << "Distance cannot be blank."
    end
    if self.style_id == nil
      @errors << "Style id cannot be blank."
    end
  end

  def is_valid?
    self.set_errors
    if @errors.length > 0
      return false
    else
      return true
    end
  end

  def get_errors
    return @errors
  end

end




