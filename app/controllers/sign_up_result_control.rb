MyApp.get "/sign_up_form/new" do
  erb :"sign_result/sign_up_form"
end

MyApp.get "/sign_up/create" do
  @s = SignupResult.new
  @s.swimmer_id = params["swimmer_id"]
  @s.event_id = params["event_id"]
  @s.time = params["time"]
  @s.rank = params["rank"]
  @s.save
  erb :"sign_up_form"
end

MyApp.get "/sign_up_table" do
  @info = SignupResult.all
  erb :"sign_up_table"
end