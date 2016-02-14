class Event < ActiveRecord::Base
  def name
      x = self.first_place_swimmer
      y = Swimmer.find_by_id(x)
    return y.name
    end
  end
end