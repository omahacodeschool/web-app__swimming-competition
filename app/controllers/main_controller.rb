MyApp.get "/" do
  
  erb :"main/welcome"
end

MyApp.get "/add_events" do
  @events = Event.all

  erb :"main/add_events"
end

MyApp.get "/add_conferences" do
  @conferences = Conference.all

  erb :"main/add_conferences"
end

MyApp.get "/add_teams" do
  @teams = Team.all

  erb :"main/add_teams"
end

MyApp.get "/add_swimmers" do
  @swimmers = Swimmer.all

  erb :"main/add_swimmers"
end

MyApp.get "/add_runs" do
  @runs = Run.all

  erb :"main/add_runs"
end