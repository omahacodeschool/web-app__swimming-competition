class Event < ActiveRecord::Base
    def display_all_competitors_in_event
      results = Result.all
      x = self.id
      y = results.where({"event_id" => x})
      return y
  end
end