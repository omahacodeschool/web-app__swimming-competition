class Swimmer < ActiveRecord::Base
#returns str of name of college
  def find_college_name
    x = self.college_id
    y = College.find_by_id(x)
    return y.college_name
  end

  def find_registered_events
    x = self.id
    banana = Signup.where({swimmer_id => x})
    return bannana.event_id
  end
end