class Result < ActiveRecord::Base

  def registration
    return Registration.find_by_id(self.registration_id)
  end

  # def event
  #   registration = Registration.find_by_id(self.registration_id)
  #   return Event.find_by_id(registration.event_id)
  # end

  # def runner
  #   registration = Registration.find_by_id(self.registration_id)
  #   return Runner.find_by_id(runner._id)
  # end

end