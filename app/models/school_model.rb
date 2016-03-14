class School <ActiveRecord::Base
  #returns first element of Array as a String (name of conference from school object)
  def display_conference_of_school
    competitors = Competitor.all
    x = self.school_name
    y = Competitor.where({"school_name" => x})
    lololol = []
    y.each do |y|
      lololol << y.conference_name
    end
    return lololol[0]
  end

  def set_errors
    @errors = []
    if self.school_name == nil || self.school_name == ""
      @errors << "School cannot be blank."
    end
  end

  def is_valid?
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