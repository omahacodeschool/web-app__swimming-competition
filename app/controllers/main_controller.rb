
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
MyApp.get "/school" do
  @schools = School.all
  erb :"schools"
end
MyApp.get "/administrator" do

  erb :"administrator"
end