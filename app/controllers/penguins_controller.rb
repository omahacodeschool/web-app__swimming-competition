MyApp.get "/penguins/create" do
  erb :"new_penguin"
end

MyApp.get "/pengins" do
  @penguins = Penguin.all
  erb :"all_penguins"
end