MyApp.get "/activities/add_activity" do


  erb :"/activities/add_activity"
end

MyApp.get "/activities/added_new_activity" do
  a = Activity.new
  a.name = params["add_activity_textbox"]
  max_score = params["activity_max_score_dropdown"]
  a.max_score = max_score.to_i
  a.save
  erb :"/activities/added_activity_confirmation"
end

MyApp.post "/activities/activity/update_name/:id" do
  @a = Activity.find_by_id(params[:id])
  @a.name = params["update_activity_name_textbox"]
  @a.save
  erb :"/activities/update_activity_confirmation"
end

MyApp.post "/activities/activity/update_max_score/:id" do
  @a = Activity.find_by_id(params[:id])
  @a.max_score = params["update_activity_max_score_dropdown"]
  @a.save
  erb :"/activities/update_activity_confirmation"
end

MyApp.get "/activities/delete_activity/:id" do 
    @activity = Activity.find_by_id(params[:id])
    @activity.delete
    erb :"/activities/deleted_activity_confirmation"
end

MyApp.get "/activities/activity/:id" do
  @activity = Activity.find_by_id(params[:id])
  erb :"/activities/activity"
end