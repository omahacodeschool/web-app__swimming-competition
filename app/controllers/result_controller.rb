
# ALL RESULT CONTROLLERS GO HERE

MyApp.get "/add/result" do
  @students = Student.all
  @activities = Activity.all
  erb :"admin/result/add_result"
end

MyApp.post "/result/create" do
  @result = Result.new
  @result.student_id = params["student_id"]
  @result.activity_id = params["activity_id"]
  activity = Activity.find_by_id(params["activity_id"])
  max_possible_score = activity.max_possible_score_for_activity
  @result.student_score = (params["student_score"].to_f/max_possible_score.to_f).to_f
  @result.save
  erb :"admin/confirm_submission"
end

MyApp.get "/read/results" do
  @results = Result.all
  erb :"admin/result/read_results"
end