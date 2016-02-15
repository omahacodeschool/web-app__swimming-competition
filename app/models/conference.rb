class Conference < ActiveRecord::Base

  def schools
    schools = School.where("conference_id" => self.id)
    return schools
  end

end