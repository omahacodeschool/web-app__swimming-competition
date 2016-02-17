enable :notice

MyApp.get "/activities" do
  @activities = Activity.all
  erb :"/activities/activities"
end

MyApp.post "/activities/add_activity" do
  erb :"/activities/add_activity"
end

MyApp.post "/activities/added_new_activity" do
  @a = Activity.new
  @a.name = params["add_activity_textbox"]
  @max_score = params["activity_max_score_dropdown"]
  @a.max_score = @max_score.to_i
  @a.locked = false
  if Activity.exists?(:name => params["add_activity_textbox"])
    redirect :"/activities/activity_exists"
  else
    @a.save
    redirect :"/activities/activity/#{@a.id}"
  end
end

MyApp.get "/activities/activity_exists" do
  erb :"activities/activity_exists"
end


MyApp.post "/activities/activity/:id/delete_activity/confirmation" do 
    @activity = Activity.find_by_id(params[:id])
    @activity.delete_all_activity_results
    @activity.delete
    redirect :"/activities"
end

MyApp.get "/activities/activity/:id" do
  @activity = Activity.find_by_id(params[:id])
  @results = Result.where({"activity_id" => params[:id]})
  erb :"/activities/activity"
end

MyApp.post "/activities/activity/:id/lock" do
  @activity = Activity.find_by_id(params[:id])
  @activity.locked = true
  @activity.save
  @results = Result.where({"activity_id" => params[:id]})
  redirect :"/activities/activity/#{@activity.id}"
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
redirect :"/activities/activity/#{@a.id}"
end

MyApp.get "/activities/activity/:id/winners" do
  @activity = Activity.find_by_id(params[:id])
  @winners = @activity.get_activity_winners
  erb :"/activities/winners"
end