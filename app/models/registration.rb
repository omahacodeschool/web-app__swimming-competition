class Registration < ActiveRecord::Base

  def runner
    return Runner.find_by_id(self.runner_id)
  end

  def event
    return Event.find_by_id(self.event_id)
  end

end