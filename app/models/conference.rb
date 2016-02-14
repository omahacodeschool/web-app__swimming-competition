class Conference < ActiveRecord::Base

  def schools
    x = self.id
    @schools = School.where("conference_id" => x)
    return @schools
  end

end