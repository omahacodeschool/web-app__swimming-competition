MyApp.get "/penguins/create" do
  x = Penguin.new
  x.last_name = params["new_last_name"]
  x.first_name = params["new_first_name"]
  x.age = params["new_age"]
  x.rookery_id = params["new_rookery_id"]
  x.save
  erb :"penguins/new_penguin"
end

MyApp.get "/penguins" do
  @penguins = Penguin.all
  erb :"penguins/all_penguins"
end

