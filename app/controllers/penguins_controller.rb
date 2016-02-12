MyApp.get "/penguins/new" do
  @rookeries = Rookery.all
  erb :"penguins/new_penguin"
end

MyApp.get "/penguins/create" do
  x = Penguin.new
  x.last_name = params["new_last_name"]
  x.first_name = params["new_first_name"]
  x.age = params["new_age"]
  x.rookery_id = params["new_rookery_id"]
  x.save

  redirect "/penguins"
end

MyApp.get "/penguins" do
  @penguins = Penguin.all
  erb :"penguins/all_penguins"
end

MyApp.get "/penguins/edit/:id" do
  @penguin = Penguin.find_by_id(params[:id])
  @rookeries = Rookery.all
  erb :"penguins/edit_penguin"
end

MyApp.get "/penguins/process_edit/:id" do
  @penguin = Penguin.find_by_id(params[:id])
  @penguin.last_name = params["new_last_name"]
  @penguin.first_name = params["new_first_name"]
  @penguin.age = params["new_age"]
  @penguin.rookery_id = params["new_rookery_id"]
  @penguin.save

  erb :"updated"
end