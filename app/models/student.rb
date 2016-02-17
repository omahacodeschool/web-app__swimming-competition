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

  #Returns an activerecord relation collection of results for all the #activities a student is
  #registered in but hasn't completed and are also unlocked

  def all_unlocked_registrations
  results = self.all_registrations
  activities = []
  unlocked_activities_for_student_ids = []
   
   results.each do |r|
    activities << r.activity_id
  end
  activities_for_student = Activity.where({"id" => activities})
  unlocked_activities_for_student = activities_for_student.where({"lock" => [false, nil]})
    unlocked_activities_for_student.each do |a|
      unlocked_activities_for_student_ids << a.id
    end
    results = results.where({"activity_id" => unlocked_activities_for_student_ids})
  return results
end

end











