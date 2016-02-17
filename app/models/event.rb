class Event < ActiveRecord::Base

  def results
    results = Result.where("event_id" => self.id)
    return results
  end

  def completed
    completed = Result.where("event_id" => self.id)
    completed.each do |c|
      if c.time == nil
        return false
      end
    end
    return true
  end

end