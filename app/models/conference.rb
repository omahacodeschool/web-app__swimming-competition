# Conference Class goes here

class Conference < ActiveRecord::Base

  def conference_empty?
    colleges = College.where("conference_id" => self.id)
    if colleges == []
      return true
    else
      return false
    end
  end

  def set_errors
    @errors = []

    #Can't be blank

    if self.conference_name == ""
      @errors << "Must provide a conference name."
    end

    #Can't have the same name as another conference that is already in the 
    #database

    other_conferences = Conference.where.not({"id" => self.id})
    other_conferences.each do |c|
      if self.conference_name == c.conference_name
        @errors << "Conference cannot have the same name as other existing conference, #{c.conference_name}."
      end

      #why don't we have this method return errors instead of making 
      #errors a global variable?
    end
  
  end

  def is_valid

    self.set_errors

      if @errors.length > 0
          return false
      else
          return true
      end
  end

  
  def get_errors
    return @errors
  end



end