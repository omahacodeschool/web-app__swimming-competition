class Event < ActiveRecord::Base
  def display_style_of_event
    x = self.style_id
    z = Style.find_by_id(x) #returns style object with id of events wanted
    return z.style
  end
end




