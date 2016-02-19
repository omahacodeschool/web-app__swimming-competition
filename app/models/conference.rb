class Conference < ActiveRecord::Base

  def schools
    schools = School.where("conference_id" => self.id)
    return schools
  end

  def has_schools
    schools = School.where("conference_id" => self.id)
    schools.each do |s|
      if s.school != nil
        return true
      end
    end
    return false
  end

end