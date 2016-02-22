
# ALL RESULT CONTROLLERS GO HERE

MyApp.get "/result/update/:result_id" do
  @result = Result.find_by_id(params[:result_id])
  erb :"admin/result/update_result"
end

MyApp.get "/add/registration" do
  @students = Student.all
  @activities = Activity.where({"lock" => [false, nil]})
  erb :"admin/result/register_student"
end

MyApp.post "/read/registrations" do
  @student = Student.find_by_id(params[:student_id])
  @results = @student.all_unlocked_registrations
  @activities = @student.all_unlocked_unregistered_uncompleted_activities
  erb :"admin/student/read_one_students_registrations"
end

MyApp.get "/add/result" do
  @students = Student.all
  erb :"admin/result/select_student_to_update"
end

MyApp.post "/result/create" do
  @result = Result.new
  @result.student_id = params["student_id"]
  @result.activity_id = params["activity_id"]
  @result.save
  @confirm_message = "Success! Registered #{@result.access_student.first_name} #{@result.access_student.last_name} for #{@result.access_event.event_name}!"
  erb :"admin/confirm_submission"
end

MyApp.post "/result/create/:student_id" do
  activity_ids = params["activity_ids"]
  activity_ids.each do |a|
    @result = Result.new
    @result.student_id = params["student_id"]
    @result.activity_id = a
    @result.save
  end
  @confirm_message = "Success! Registered #{@result.access_student.first_name} #{@result.access_student.last_name} for #{@result.access_event.event_name}!"
  erb :"admin/confirm_submission"
end

MyApp.post "/result/update/process/:result_id" do
  @result = Result.find_by_id(params[:result_id])
  if @result.access_event.lock == true
    @confirm_message = "Stop trying to cheat! That event is locked."
  else
  activity_id = @result.access_event.id
  activity = Activity.find_by_id(activity_id)
  max_possible_score = activity.max_possible_score_for_activity
  @result.student_score = (params["student_score"].to_f/max_possible_score.to_f).to_f
  @result.save
  @confirm_message = "Success! Updated #{@result.access_student.first_name} #{@result.access_student.last_name}'s score in #{@result.access_event.event_name}!"
  end
  erb :"admin/confirm_submission"
end

MyApp.get "/read/results" do
  @results = Result.all
  erb :"admin/result/read_results"
end