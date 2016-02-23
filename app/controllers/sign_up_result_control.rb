#Creates new sign up form
 MyApp.get "/sign_up_form/new" do
  @swimmer = SwimmerInfo.all
  @event = Event.all

  erb :"sign_result/sign_up_form"
end

#Signs up new swimmer
MyApp.post "/sign_up_form/create" do
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

#Edit form
MyApp.get "/edit_form/:id" do
  @info = SignupResult.find_by_id(params[:id])
  @y = @info.event_access
  if @y.lock == true
    erb :"event/sorry_event_locked"
  else @info
    binding.pry
    erb :"sign_result/edit_signup_form"
  end
end

#edits event
MyApp.post "/process_signup_form/:id" do
  @info = SignupResult.find_by_id(params[:id])
  @info.swimmer_info_id = params["swimmer_info_id"]
  @info.event_id = params["event_id"]
  @info.time = params["time"]
  @info.rank = params["rank"]
  @info.save
  erb :"sign_result/updated"
end

#deletes event
MyApp.get "/delete_event_result/:id" do
  x = SignupResult.find_by_id(params[:id])
  @info = x.event_access
  if @info.lock == true
    erb :"event/sorry_event_locked"
  else 
    @info.delete
    erb :"sign_result/delete_successful"
  end
end





