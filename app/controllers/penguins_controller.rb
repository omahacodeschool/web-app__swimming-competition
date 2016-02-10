MyApp.get "/penguins/create" do
  x = Penguin.new
  x.last_name = params["new_last_name"]
  x.first_name = params["new_first_name"]
  x.save
  erb :"new_penguin"
end

MyApp.get "/penguins" do
  @penguins = Penguin.all
  erb :"all_penguins"
end

