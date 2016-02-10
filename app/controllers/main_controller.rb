
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
  @conference = Conference.all
  erb :"schools"
end
MyApp.get "/administrator" do

  erb :"administrator"
end
MyApp.get "/add_swimmer" do
  swimmer_add = Swimmer.new
  swimmer_add.name = params[:new_swimmer]
  swimmer_add.save
  allswimmers = Swimmer.all
  erb :"administrator"
end
MyApp.get "/add_swimmer_school" do
  swimmer_school = Swimmer.new
  swimmer_school.school_id = params[:swimmer_school]
  swimmer_school.save
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
MyApp.get "/school_conf" do
  school_conf = School.new
  school_conf.conference_id = params[:new_conf]
  school_conf.save
  erb :"administrator"
end
MyApp.get "/add_conference" do
  conference_add = Conference.new
  conference_add.conference_name = params[:new_conference]
  conference_add.save
  conf = Conference.all
  @conference = conf.join(" ")
  erb :"administrator"
end
MyApp.get "/all_tables" do
  erb :"all_tables"
end