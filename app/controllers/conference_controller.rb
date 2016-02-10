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