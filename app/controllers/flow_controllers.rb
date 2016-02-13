MyApp.get "/" do
  erb :"homepage"
end

# Go to a view with a form for adding swimmers.
MyApp.get "/new_swimmer" do
  @universities = University.all
  erb :"create/create_swimmer"
end

# Go to a view that only displays the current swimmers.
MyApp.get "/show_swimmers" do
  @swimmers = Swimmer.all
  erb :"display/display_swimmers"
end

# Go to a view with a form for adding conferences.
MyApp.get "/new_conference" do
  erb :"create/create_conference"
end

# Go to a view that only displays the current conferences.
MyApp.get "/show_conferences" do
  @conferences = Conference.all
  erb :"display/display_conferences"
end

# Go to a view with a form for adding universities.
MyApp.get "/new_university" do
  erb :"create/create_university"
end

# Go to a view that only displays the current universities.
MyApp.get "/show_universities" do
  @universities = University.all
  erb :"display/display_universities"
end

# Go to a view with a form for adding events.
MyApp.get "/new_event" do
  erb :"create/create_event"
end

# Go to a view that only displays the current list of events.
MyApp.get "/show_events" do
  @events = Event.all
  @swimmers = Swimmer.all
  erb :"display/display_events"
end

# Go to a view with a form for adding results.
MyApp.get "/new_result" do
  @events = Event.all
  @swimmers = Swimmer.all
  erb :"create/create_result"
end

# Go to a view that only displays the current list of results.
MyApp.get "/show_results" do
  @results = Result.all
  @swimmers = Swimmer.all
  erb :"display/display_results"
end

# Go to a view that only displays the current standings.
MyApp.get "/show_standings" do
  @standings = Standing.all
  erb :"display/display_standings"
end