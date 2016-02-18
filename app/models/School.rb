class School < ActiveRecord::Base

  def get_conference_name
    x = Conference.find_by_id(self.conference_id)
      return x.conference_name
  end

end