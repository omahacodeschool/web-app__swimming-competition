MyApp.get "/rookeries/new" do
  @conferences = Conference.all
  erb :"rookeries/new_rookery"
end

MyApp.post "/rookeries/create" do
  @rookery = Rookery.new
  @rookery.name = params["new_rookery"]
  @rookery.conference_id = params["new_conference_id"]
  if @rookery.is_valid
    @rookery.save
    redirect "/rookeries"
  else 
    @error_object = @rookery     
    erb :"error"
  end
end 

MyApp.get "/rookeries" do
  @rookeries = Rookery.all
  erb :"rookeries/all_rookeries"
end

MyApp.get "/rookeries/edit/:id" do
  @rookery = Rookery.find_by_id(params[:id])
  @conferences = Conference.all
  erb :"rookeries/edit_rookery"
end

MyApp.post "/rookeries/process_edit/:id" do
  @rookery = Rookery.find_by_id(params[:id])
  @rookery.name = params["edit_rookery"]
  @rookery.conference_id = params["edit_conference_id"]
  if @rookery.is_valid
    @rookery.save
    erb :"updated"
  else 
    @error_object = @rookery    
    erb :"error"
  end
end 

MyApp.post "/rookeries/delete/:id" do
  @rookery = Rookery.find_by_id(params[:id])
  @rookery.delete
  @rookery.delete_penguins
  erb :"updated"
end
