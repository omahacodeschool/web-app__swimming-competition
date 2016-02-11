MyApp.get "/rookeries/new" do
  @conferences = Conference.all
  erb :"rookeries/new_rookery"
end

MyApp.get "/rookeries/create" do
  x = Rookery.new
  x.name = params["new_rookery"]
  x.conference_id = params["new_conference_id"]
  x.save
  redirect_to "/rookeries"
end

MyApp.get "/rookeries" do
  @rookeries = Rookery.all
  erb :"rookeries/all_rookeries"
end