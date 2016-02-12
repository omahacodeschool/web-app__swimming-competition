class Signup < ActiveRecord::Base

  def get_swimmer_name
    x = self.swimmer_id
    y = Swimmer.find_by_id(x)
    return y.swimmer_name
  end

end