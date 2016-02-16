# Student Class gets defined here

class Student < ActiveRecord::Base


  def access_college
    x = self.college_id
    y = College.find_by_id(x)
    return y
  end


  # Returns a collection of results that show which events a student is #registered for, 
  # but has not yet completed

  def all_registrations
  results_awaiting_score = Result.where({"student_id" => self.id, "student_score" => nil})
  return results_awaiting_score
  end

  #Returns a collection of results that show what events a student has #completed

  def all_completed_performances
  completed_results = Result.where({"student_id" => self.id}).where.not({"student_score" => nil})
  return completed_results
  end

end
