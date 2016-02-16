
 MyApp.get "/sign_up_form/new" do
  erb :"sign_result/sign_up_form"
end

MyApp.get "/sign_up_form/create" do
  @s = SignupResult.new
  @s.swimmer_info_id = params["swimmer_info_id"]
  @s.event_id = params["event_id"]
  @s.time = params["time"]
  @s.rank = params["rank"]
  @s.save
  erb :"sign_result/sign_up_form"
end

MyApp.get "/sign_up_table" do
  @info = SignupResult.all
  erb :"sign_result/sign_up_table"
end

MyApp.get "/event/:id" do
  @x = Event.find_by_id(params[:id])
 erb :"event/single_event"
end


MyApp.get "delete_swimmer/:id" do
 @swimmer = SwimmerInfo.find_by_id(params[:id])
 @swimmer.delete
 erb :"sign_result/swimmer_deleted"
end

#MyApp.get "/top_three" do
#  x = SignupResult.all
#  @y = x.rank[1..3]
#  binding.pry
#  erb :"sign_result/sign_up_table"
#end