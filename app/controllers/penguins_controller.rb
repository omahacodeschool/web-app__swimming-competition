MyApp.get "/penguins/new" do
  @rookeries = Rookery.all
  erb :"penguins/new_penguin"
end

MyApp.post "/penguins/create" do
  @penguin = Penguin.new
  @penguin.last_name = params["new_last_name"]
  @penguin.first_name = params["new_first_name"]
  @penguin.age = params["new_age"]
  @penguin.rookery_id = params["new_rookery_id"]
  if @penguin.is_valid
    @penguin.save
    redirect "/penguins"
  else 
    @error_object = @penguin     
    erb :"error"
  end

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

MyApp.post "/penguins/process_edit/:id" do
  @penguin = Penguin.find_by_id(params[:id])
  @penguin.last_name = params["edit_last_name"]
  @penguin.first_name = params["edit_first_name"]
  @penguin.age = params["edit_age"]
  @penguin.rookery_id = params["edit_rookery_id"]

  if @penguin.is_valid
    @penguin.save
    erb :"updated"
  else 
    @error_object = @penguin     
    erb :"error"
  end

end

MyApp.post "/penguins/delete/:id" do
  @penguin = Penguin.find_by_id(params[:id])
  @penguin.delete
  @penguin.delete_results
  erb :"updated"
end