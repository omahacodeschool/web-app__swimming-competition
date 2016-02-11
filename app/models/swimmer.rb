class Swimmer < ActiveRecord::Base
#Return Aray of swimmers' names.
  def swimmer_name
    x = self.swimmer_id
    y = Swimmer.find_by(x)
    return y.name
  end
end