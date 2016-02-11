MyApp.get "/activities/add_activity" do


  erb :"/activities/add_activity"
end

MyApp.get "/activities/activity/:id" do
  @activity = Activity.find_by_id(params[:id])
  erb :"/activities/activity"
end