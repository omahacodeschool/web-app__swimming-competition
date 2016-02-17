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

MyApp.get "/edit_swimmer_form/:id" do
  @info = SwimmerInfo.find_by_id(params[:id])
  erb :"swimmer/edit_swimmer_info"
end

MyApp.post "/process_swimmer_form/:id" do
  @info = SwimmerInfo.find_by_id(params[:id])
  @info.last_name = params["last_name"]
  @info.first_name = params["first_name"]
  @info.team_id = params["team_id"]
  @info.age = params["age"]
  @info.height = params["height"]
  @info.weight = params["weight"]
  @info.save
  erb :"swimmer/updated_swimmer"
end
