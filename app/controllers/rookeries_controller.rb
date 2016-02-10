MyApp.get "/rookeries/create" do
  x.name = params["new_rookery"]
  x.save
  erb :"new_rookery"
end

MyApp.get "/rookeries" do
  @rookeries = Rookery.all
  erb :"all_rookeries"
end