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

MyApp.get "/delete_conference/:id" do
  conference = Conference.find_by_id(params[:id])
  conference.delete_conference?
  if true
    conference.delete 
    erb :"conference/conference_delete"
  else
    erb :"conference/conference_delete_invaild"
  end
end