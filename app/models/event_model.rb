class Event < ActiveRecord::Base
  #returns String (name of style of event object)
  def display_style_of_event
    x = self.style_id
    z = Style.find_by_id(x) #returns style object with id of events wanted
    return z.style
  end

  #returns Integer (id number of Style object)
  def get_style_id(name)
    x = Style.find_by_style(name)
    return x.id
  end

  def is_valid?
    if self.gender == nil || self.distance == nil || self.style_id == nil
      return false
    else
      return true
    end
  end


end




