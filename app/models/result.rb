# Result class defined here

class Result < ActiveRecord::Base

  def access_student
    x = self.student_id
    y = Student.find_by_id(x)
    return y
  end

  def access_event
    x = self.activity_id
    y = Activity.find_by_id(x)
    return y
  end

end