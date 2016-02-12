# Student Class gets defined here

class Student < ActiveRecord::Base


  def college_name
    x = self.college_id
    y = College.find_by_id(x)
    return y.college_name
  end

  # def result_for_activity(activity_object)
  #   x = self.


end
