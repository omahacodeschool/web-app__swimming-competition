MyApp.post "/activities/add_activity" do


  erb :"/activities/add_activity"
end

MyApp.post "/activities/added_new_activity" do
  a = Activity.new
  a.name = params["add_activity_textbox"]
  max_score = params["activity_max_score_dropdown"]
  a.max_score = max_score.to_i
  a.save
  erb :"/activities/added_activity_confirmation"
end

MyApp.post "/activities/activity/:id/delete_activity/confirmation" do 
    @activity = Activity.find_by_id(params[:id])
    @activity.delete_all_activity_results
    @activity.delete
    erb :"/activities/deleted_activity_confirmation"
end

MyApp.get "/activities/activity/:id" do
  @activity = Activity.find_by_id(params[:id])
  erb :"/activities/activity"
end

MyApp.post "/activities/activity/:id/update_activity" do
  @activity = Activity.find_by_id(params[:id])
  erb :"/activities/update_activity"
end

MyApp.post "/activities/activity/:id/update_activity/confirmation" do
  @activity = Activity.find_by_id(params[:id])
  @a = Activity.find_by_id(params[:id])
  @a.max_score = params["update_activity_max_score_dropdown"]
  @a.name = params["update_activity_name_textbox"]
  @a.save
erb :"/activities/update_activity_confirmation"
end