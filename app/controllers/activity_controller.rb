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

MyApp.get "/update/activity/:activity_id" do
  @activity = Activity.find_by_id(params[:activity_id])
  erb :"admin/activity/update_activity"
end

MyApp.post "/process_update_activity_form/:activity_id" do
  @activity = Activity.find_by_id(params[:activity_id])
  @activity.event_name = params["event_name"]
  @activity.max_possible_score_for_activity = params["max_possible_score_for_activity"]
  @activity.save
  @confirm_message = "Success! Updated #{@activity.event_name}. It's maximum possible score is now #{@activity.max_possible_score_for_activity}!"
  erb :"admin/confirm_submission"
end

MyApp.post "/delete/activity/:activity_id" do
  @activity = Activity.find_by_id(params[:activity_id])
  @confirm_message = "Success! Deleted #{@activity.event_name}!"
  @corresponding_results = Result.where({"activity_id" => params[:activity_id]})
  @corresponding_results.delete_all
  @activity.delete
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


MyApp.post "/lock/activity/:activity_id" do
  @activity = Activity.find_by_id(params["activity_id"])
  @activity.lock = true
  @activity.save
  @confirm_message = "Successfully locked #{@activity.event_name}."
  erb :"admin/confirm_submission"
end

MyApp.post "/unlock/activity/:activity_id" do
  @activity = Activity.find_by_id(params["activity_id"])
  @activity.lock = false
  @activity.save
  @confirm_message = "Successfully unlocked #{@activity.event_name}."
  erb :"admin/confirm_submission"
end





