MyApp.get "/squad_form" do
  erb :"squad_views/squad_form"
end

MyApp.post "/add_squad" do
  x = Squad.new
  x.name = params["squad_name"]
  x.save

  erb :"squad_views/add_success"
end

MyApp.get "/squads_list" do
  erb :"squad_views/squads_list"
end
