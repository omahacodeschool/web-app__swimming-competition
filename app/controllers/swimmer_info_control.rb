MyApp.get "/swimmer_info_form" do
  @s = SwimmerInfo.new
  @s.first_name = params["last_name"]
  @s.first_name = params["first_name"]
  @s.first_name = params["team_id"]
  @s.first_name = params["age"]
  @s.first_name = params["gender_id"]
  @s.first_name = params["height"]
  @s.first_name = params["weight"]
  @s.save
  erb :"/swimmer/swimmer_info_form"
end

MyApp.get "/swimmer_info_table" do
  @info = SwimmerInfo.all
  erb :"/swimmer/swimmer_info_table"
end