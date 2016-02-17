class Contestant < ActiveRecord::Base
  def cities
    var = Region.find_by_id(self.region_id) 
    return var.city
  end
end
