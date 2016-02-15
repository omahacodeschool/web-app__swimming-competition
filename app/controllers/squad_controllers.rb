MyApp.get "/squad_form" do
  @divisions = Division.all
  erb :"squad_views/squad_form"
end

MyApp.post "/add_squad" do
  x = Squad.new
  x.squad_name = params["squad_name"]
  x.division_id = params["division_id"]
  x.save
  erb :"squad_views/add_success"
end

MyApp.get "/squads_list" do
  @squads = Squad.all
  erb :"squad_views/squads_list"
end

MyApp.get "/squad/:squad_id" do
  @squad = Squad.find_by_id(params[:squad_id])
  erb :"squad_views/view_squad"
end

MyApp.post "/delete_squad/:squad_id" do
  @squad = Squad.find_by_id(params[:squad_id])
  @squad.delete
  erb :"squad_views/delete_success"
end
