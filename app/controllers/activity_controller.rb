# ALL ACTIVITY CONTROLLERS GO HERE

MyApp.get "/add/activity" do
  erb :"admin/activity/add_activity"
end

MyApp.post "/activity/create" do
  @activity = Activity.new
  @activity.event_name = params["activity_name"]
  @activity.max_possible_score_for_activity = params["activity_max_possible_score"]
  @activity.save
  erb :"admin/confirm_submission"
end

MyApp.get "/read/activities" do
  @activities = Activity.all
  erb :"admin/activity/read_activities"
end

MyApp.get "/read/activity/:id" do
  @activity = Activity.find_by_id(params[:id])
  @results = Result.where({"activity_id" => params[:id]})
  sorted_results = @results.order(student_score: :desc)
  @top_three_results_for_activity = sorted_results.first(3)
  erb :"admin/activity/read_one_activity"
end