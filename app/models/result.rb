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



  #Returns an array (collection?) of all the results for a particular activity that are 
  #completed, in order of
  #highest student score to lowest student score

  def ordered_results_for_activity(activity_object)
    all_results_for_activity = Result.where({"activity_id" => activity_object.id}).where.not({"student_score" => nil})
    ordered_results = all_results_for_activity.order(student_score: :desc)
    return ordered_results
  end
  
  # Returns a collection of all the results for a particular student that are # completed, in order of highest score to lowest score

def ordered_results_for_student(student_object)
  completed_results = student_object.all_completed_performances
  ordered_results = completed_results.order(student_score: :desc)
  return ordered_results
end

  #Checks all results to see if they contain an activity that is locked
  #returns all results that don't have a locked activity
# def lock_check
#   all_activities = Activity.where({"id" => self.activity_id})
#   @activities = Activity.where({"lock" => [false, nil]})
# end


end