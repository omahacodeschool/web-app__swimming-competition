MyApp.get "/gamer_form" do
  @squads = Squad.all
  erb :"gamers_views/gamer_form"
end

MyApp.post "/add_gamer" do
  x = Gamer.new
  x.last_name = params["last_name"]
  x.first_name = params["first_name"]
  x.squad_id = params["squad_id"]
  x.save

  erb :"gamers_views/add_success"
end

MyApp.get "/gamers_list" do
  @gamers = Gamer.all
  erb :"gamers_views/gamers_list"
end

MyApp.get "/gamer/:gamer_id" do
  @gamer = Gamer.find_by_id(params[:gamer_id])
  erb :"gamers_views/gamer_profile"
end

MyApp.get "edit_gamer_form/:gamer_id" do
  @gamer = Gamer.find_by_id(params[:gamer_id])
  erb :"gamers_views/edit_gamer_form"
end

MyApp.post "/delete_gamer/gamer_id" do
  @gamer = Gamer.find_by_id(params[:gamer_id])
  @gamer.delete
  erb :"gamers_views/delete_success"
end
