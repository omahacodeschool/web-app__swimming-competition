class Squad < ActiveRecord::Base

  def division_access
    x = self.division_id
    y = Division.find_by_id(x)
    return y
  end

  
end
