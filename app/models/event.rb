class Event < ActiveRecord::Base
  def first_place_name
      x = self.first_place_swimmer
      y = Swimmer.find_by_id(x)
    return y.name
  end
  def second_place_name
      x = self.second_place_swimmer
      y = Swimmer.find_by_id(x)
    return y.name
  end
  def third_place_name
      x = self.third_place_swimmer
      y = Swimmer.find_by_id(x)
    return y.name
  end
end