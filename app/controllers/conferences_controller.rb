MyApp.get "/conferences/new" do
  erb :"conferences/new_conference"
end

MyApp.post "/conferences/create" do
  x = Conference.new
  x.name = params["new_conference"]
  x.save 
  redirect "/conferences"
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
  @conference.save
  erb :"updated"
end

MyApp.get "/conferences/delete/:id" do
  @conference = Conference.find_by_id(params[:id])
  erb :"conferences/delete_conference"
end

MyApp.post "/conferences/process_delete/:id" do
  @conference = Conference.find_by_id(params[:id])
  @conference.delete
  erb :"updated"
end


