MyApp.get "/conferences/new" do
  erb :"conferences/new_conference"
end

MyApp.post "/conferences/create" do
  x = Conference.new
  x.name = params["new_conference"]

  if x.is_valid
    x.save
    redirect "/conferences"
  else 
    erb :"conferences/error"
  end

end 

MyApp.get "/conferences" do
  @conferences = Conference.all
  erb :"conferences/all_conferences"
end

MyApp.get "/conferences/edit/:id" do
  @conference = Conference.find_by_id(params[:id])
  erb :"conferences/edit_conference"
end

MyApp.post "/conferences/process_edit/:id" do
  @conference = Conference.find_by_id(params[:id])
  @conference.name = params["edit_conference"]

  if @conference.is_valid
    @conference.save
    erb :"updated"
  else 
    erb :"conferences/error"
  end
end

MyApp.post "/conferences/delete/:id" do
  @conference = Conference.find_by_id(params[:id])
  @conference.delete
  erb :"updated"
end

MyApp.get "/conferences/cannot_delete" do
  erb :"conferences/delete_rookeries_first"
end

