class School <ActiveRecord::Base
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
end