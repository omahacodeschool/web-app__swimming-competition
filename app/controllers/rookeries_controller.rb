MyApp.get "/rookeries/create" do
  x.name = params["new_rookery"]
  x.save
  erb :"rookeries/new_rookery"
end

MyApp.get "/rookeries" do
  @rookeries = Rookery.all
  erb :"rookeries/all_rookeries"
end