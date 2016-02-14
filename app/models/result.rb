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


  # @ranks_in_activity = []
  #   @top_three_activities.each do |r|
  #     activity_id = r.access_event.id

  #Returns an array of all the results for a particular activity, in order of
  #highest student score to lowest student score

  def ordered_results_for_activity(activity_object)
    all_results_for_activity = Result.where({"activity_id" => activity_object.id})
    ordered_results = all_results_for_activity.order(student_score: :desc)
    return ordered_results
  end


  #     @ranks_in_activity << ordered_results.index(r)

end