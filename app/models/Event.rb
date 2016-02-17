class Event < ActiveRecord::Base

  def penguin_access
    x = self.penguin_id
    y = Penguin.find_by_id(x)
    y
  end

end