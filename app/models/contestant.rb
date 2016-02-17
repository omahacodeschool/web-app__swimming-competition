class Contestant < ActiveRecord::Base
  def cities
    var = Region.where({"id" => self.region_id}) 
    return var.city
  end
end
