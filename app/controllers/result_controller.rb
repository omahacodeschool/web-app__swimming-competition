
# ALL RESULT CONTROLLERS GO HERE

MyApp.get "/add/result" do
  @students = Student.all
  @activities = Activity.all
  erb :"admin/result/add_result"
end

MyApp.get "/result/create" do
  @result = Result.new
  @result.student_id = params["student_id"]
  @result.event_id = params["activity_id"]
  @result.student_score = params["student_score"]
  @result.save
  erb :"admin/confirm_submission"
end

MyApp.get "/read/results" do
  @results = Result.all
  erb :"admin/result/read_results"
end