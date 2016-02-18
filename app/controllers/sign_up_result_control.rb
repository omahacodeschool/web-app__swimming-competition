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
  if @swimmer.lock == true
    erb :"event/sorry_event_locked"
  else 
    @swimmer.delete
    erb :"sign_result/swimmer_deleted"
  end
end


MyApp.get "/edit_form/:id" do
  @info = SignupResult.find_by_id(params[:id])
  erb :"sign_result/edit_signup_form"
end

MyApp.post "/process_signup_form/:id" do
  @info = SignupResult.find_by_id(params[:id])
  @info.swimmer_info_id = params["swimmer_info_id"]
  @info.event_id = params["event_id"]
  @info.time = params["time"]
  @info.rank = params["rank"]
  @info.save
  erb :"sign_result/updated"
end

MyApp.get "/delete_event/:id" do
  @info = SignupResult.find_by_id(params[:id])
  @info.event_locked?
  if true
    erb :"event/sorry_event_locked"
  else 
    @info.delete
    erb :"sign_result/delete_successful"
  end
end





