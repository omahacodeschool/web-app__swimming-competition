class Swimmer < ActiveRecord::Base

  def self.get_all_swimmer_names
    all_swim_names = []
    Swimmer.all.each do |s|
      x = s.swimmer_name
      all_swim_names << x
    end
    return all_swim_names
  end

  def get_school_name
    x = self.school_id
    y = School.find_by_id(x)
    return y.school_name
  end
  
 end
