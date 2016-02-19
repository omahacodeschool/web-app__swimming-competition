class Conference < ActiveRecord::Base

  def get_all_conference_names
    all_conference_names = []
    Conference.all.each do |s|
      x = s.conference_name
      all_conference_names << x
    end
      return all_conference_names
  end
  

end