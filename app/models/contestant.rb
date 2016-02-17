class Contestant < ActiveRecord::Base
  def city
    var = Region.where({"id" => self.region_id}) 
    return var.name
  end

end
