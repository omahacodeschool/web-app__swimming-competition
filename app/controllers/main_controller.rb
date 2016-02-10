
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
MyApp.get "/add_swimmer" do
  swimer_add = Swimmer.new
  swimmer_add.name = params[:new_swimmer]
  swimmer_add.save
  allswimmers = Swimer.all
  erb :"administrator"
end
MyApp.get "/add_event" do
  event_add = Event.new
  event_add.event_name = params[:new_event]
  event_add.save
  allevents = Event.all
  erb :"administrator"
end
MyApp.get "/add_school" do
  school_add = School.new
  school_add.school_name = params[:new_school]
  school_add.save
  allschools = School.all
  erb :"administrator"
end