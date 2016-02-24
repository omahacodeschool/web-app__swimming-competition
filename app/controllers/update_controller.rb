MyApp.get "/admin/edit_conference/:number" do
  @conference = Conference.find_by_id(params[:number])
  erb :'admin/update/edit_conference'
end

MyApp.post "/admin/conference_updated/:number" do
  @conference = Conference.find_by_id(params[:number])
  @conference.name = params["name"]
  @conference.save
  erb :"admin/update/conference_updated"
end