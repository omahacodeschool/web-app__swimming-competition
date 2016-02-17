#Creates new sign up form
 MyApp.get "/sign_up_form/new" do
  erb :"sign_result/sign_up_form"
end

#Signs up new swimmer
MyApp.get "/sign_up_form/create" do
  @s = SignupResult.new
  @s.swimmer_info_id = params["swimmer_info_id"]
  @s.event_id = params["event_id"]
  @s.time = params["time"]
  @s.rank = params["rank"]
  @s.save
  erb :"sign_result/sign_up_form"
end

#Sign up table controller
MyApp.get "/sign_up_table" do
  @info = SignupResult.all
  erb :"sign_result/sign_up_table"
end

#Lists single event
MyApp.get "/event/:id" do
  @x = Event.find_by_id(params[:id])
 erb :"event/single_event"
end

#Deletes swimmer
MyApp.get "/delete_swimmer/:id" do
 @swimmer = SwimmerInfo.find_by_id(params[:id])
 @swimmer.delete
 erb :"sign_result/swimmer_deleted"
end
