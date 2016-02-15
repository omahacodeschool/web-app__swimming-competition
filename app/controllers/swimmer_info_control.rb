MyApp.get "/swimmer_info_form/new" do
  erb :"swimmer/swimmer_info_form"
end

MyApp.get "/swimmer_info_form/create" do
  @s = SwimmerInfo.new
  @s.last_name = params["last_name"]
  @s.first_name = params["first_name"]
  @s.team_id = params["team_id"]
  @s.age = params["age"]
  @s.height = params["height"]
  @s.weight = params["weight"]
  @s.save
  erb :"swimmer/swimmer_info_form"
end

MyApp.get "/swimmer_info_table" do
  @info = SwimmerInfo.all
  erb :"swimmer/swimmer_info_table"
end