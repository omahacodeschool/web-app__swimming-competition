class School <ActiveRecord::Base
  def display_conference_of_school
    competitors = Competitor.all
    x = self.school_name
    y = competitors.where({"school_name" => x})
    return y
  end
end