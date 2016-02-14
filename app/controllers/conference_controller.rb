MyApp.get "/conferences" do
	@list_conferences = Conference.all
  erb :"conferences/list_conferences"
end

MyApp.get "/conferences/add_new" do
  erb :"conferences/add_conference"
end

MyApp.post "/add_conference" do
	x = Conference.new
	x.name = params[:conference_name]
	x.save
	erb :"success"
end

MyApp.get "/conference_info/:conference_id" do
  @conference = Conference.find(params[:conference_id])
  erb :"conferences/conference_info"
end

MyApp.get "/conferences/edit/:conference_id" do
  	@conference = Conference.find(params[:conference_id])
	erb :"conferences/edit_conference"
end

MyApp.post "/edit_conference/:conference_id" do
	@conference = Conference.find(params[:conference_id])
	@conference.update_attributes({name: params['name']})
	@conference.save
	erb :"success"
end

MyApp.post "/conference_delete/:conference_id" do
	@conference = Conference.find(params[:conference_id])
	if @conference.there_are_schools_in_conference != false
		erb :"conferences/unable_to_delete_conference"
	else
		@conference.delete
		erb :"success"
	end

end
