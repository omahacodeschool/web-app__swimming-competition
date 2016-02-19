class School < ActiveRecord::Base

  def get_conference_name
    x = Conference.find_by_id(self.conference_id)
      return x.conference_name
  end


  def get_all_school_names
    all_school_names = []
    School.all.each do |s|
      x = s.school_name
      all_school_names << x
    end
      return all_school_names
  end

end