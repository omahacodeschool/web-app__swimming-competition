# Student Class gets defined here

class Student < ActiveRecord::Base


  def access_college
    x = self.college_id
    y = College.find_by_id(x)
    return y
  end


  # def result_for_activity(activity_object)
  #   x = self.


end
