class Conference < ActiveRecord::Base

  def schools
    schools = School.where("conference_id" => self.id)
    return schools
  end

  def no_can_do
    schools = School.where("conference_id" => self.id)
    schools.each do |s|
      if s.school != nil
        return "no_can_do"
      end
    end
    return self.id
  end

end