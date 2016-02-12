class Event < ActiveRecord::Base

  def results
    x = self.id
    @results = Result.where("event_id" => x)
    return @results
  end

end