MyApp.get "/" do
  erb :"index"
end

MyApp.get "/competitors" do
  erb :"competitors/list_competitors"
end

MyApp.get "/conferences" do
	@list_conferences = Conference.all
	binding.pry
  erb :"conferences/list_conferences"
end

MyApp.get "/conferences/add_new" do
	x = Conference.new
	x.name = params["conference_name"]
	x.save
  erb :"conferences/add_conference"
end

MyApp.get "/conferences/add_conference" do
	erb :"success"
end

MyApp.get "/events" do
  erb :"events/list_events"
end

MyApp.get "/results" do
  erb :"results/list_results"
end

MyApp.get "/schools" do
  erb :"schools/list_schools"
end