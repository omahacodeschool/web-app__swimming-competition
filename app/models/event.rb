class Event < ActiveRecord::Base

  def results
    @results = Result.where("event_id" => self.id)
    return @results
  end

end