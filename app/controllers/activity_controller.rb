# ALL ACTIVITY CONTROLLERS GO HERE

MyApp.get "/activity/create" do
  @activity = Activity.new
  @activity.event_name = params["activity_name"]
  @activity.max_possible_score_for_activity = params["activity_max_possible_score"]
  @activity.save
  binding.pry
  erb :"admin/confirm_submission"
end

MyApp.get "/read/colleges" do
  @colleges = College.all
  erb :"admin/read_colleges"
end