MyApp.get "/admin" do
  erb :"admin/admin"
end

MyApp.get "/admin/conferences" do
  @conferences = Conference.all
  erb :"admin/conferences_admin"
end

MyApp.get "/admin/schools" do
  @schools = School.all
  @conferences = Conference.all
  erb :"admin/schools_admin"
end

MyApp.get "/admin/events" do
  @events = Event.all
  erb :"admin/events_admin"
end

MyApp.get "/admin/runners" do
  @runners = Runner.all
  @schools = School.all
  erb :"admin/runners_admin"
end

MyApp.get "/admin/registrations" do
  @registrations = Registration.all
  @runners = Runner.all
  @events = Event.all
  erb :"admin/registrations_admin"
end  

MyApp.get "/admin/results" do
  @events = Event.all

  erb :"admin/results_admin"
end