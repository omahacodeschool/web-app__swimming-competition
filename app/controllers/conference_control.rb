MyApp.get "/conference_form/new" do
  erb :"conference/conference_form"
end


MyApp.get "/conference_form/create" do
  @c = Conference.new
  @c.conference = params["conference"]
  @c.save
  erb :"conference/conference_form" 
end

MyApp.get "/conference_table" do
  @info = Conference.all
  erb :"conference/conference_table"
end

MyApp.get "/process_edit_form/:id" do
  @info = Conference.find_by_id(params[:id])
  erb :"conference/conference_edit_form"
end

MyApp.post "/process_edit_form" do
  @info = Conference.find_by_id(params[:id])
  @info.conference = params["conference"]
  @info.save
  erb :"conference/conference_updated" 
end

MyApp.get "/delete_conference/:id" do
  conference = Conference.find_by_id(params[:id])
  if conference.delete_conference?
    conference.delete
    erb :"conference/conference_delete"
  else
    erb :"conference/conference_delete_invalid"
  end
end
