MyApp.get "/conferences" do
	@list_conferences = Conference.all
  erb :"conferences/list_conferences"
end

MyApp.get "/conferences/add_new" do
  erb :"conferences/add_conference"
end

MyApp.post "/add_conference" do
	conference = Conference.new
	conference.name = params[:conference_name]
	if conference.is_valid == true
		conference.save
		redirect :"conference_info/#{conference.id}"
	else
		@error_object = conference
		erb :"error"
	end
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
	@conference.assign_attributes({name: params['name']})
	if @conference.is_valid == true
		@conference.save
		redirect :"conference_info/#{@conference.id}"
	else
		@error_object = @conference
		erb :"error"
	end
end

MyApp.post "/conference_delete/:conference_id" do
	@conference = Conference.find(params[:conference_id])
	if @conference.schools_members != nil
		erb :"conferences/unable_to_delete_conference"
	else
		@conference.delete
		redirect :"conferences"
	end

end
