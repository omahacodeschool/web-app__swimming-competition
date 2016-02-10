MyApp.get "/conferences" do
	@list_conferences = Conference.all
  erb :"conferences/list_conferences"
end

MyApp.get "/conferences/add_new" do
  erb :"conferences/add_conference"
end

MyApp.get "/add_conference" do
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

MyApp.get "/edit_conference/:conference_id" do
	@conference = Conference.find(params[:conference_id])
	@conference.update_attributes({name: params['name']})
	@conference.save
	erb :"success"
end