
MyApp.get "/" do
  erb :"home"
end
MyApp.get "/swimmer" do
  @swimmers = Swimmer.all
  erb :"swimmers"
end
MyApp.get "/event" do
  @events = Event.all
  erb :"events"
end
MyApp.get "/signup" do
  @signup = Signup.all
  erb :"signup"
end
MyApp.get "/school" do
  @schools = School.all
  @conference = Conference.all
  erb :"schools"
end
MyApp.get "/administrator" do
  erb :"administrator"
end
MyApp.get "/all_tables" do
  @conferences = Conference.all
  @events = Event.all
  @schools = School.all
  @signups = Signup.all
  @swimmers = Swimmer.all
  
  erb :"all_tables"
end