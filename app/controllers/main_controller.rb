
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
MyApp.get "/add_signup_swimmer" do
  signup_swimmer = Signup.new
  signup_swimmer.swimmer_id = params[:new_signup]
  signup_swimmer.save
  erb :"administrator"
end
MyApp.get "/add_signup_event" do
  signup_event = Signup.new
  signup_event.event_id = params[:event_id]
  signup_event.save
  erb :"administrator"
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
MyApp.get "/delete_swimmer" do
  Swimmer.delete()
end
MyApp.get "/add_swimmer_school" do
  swimmer_school = Swimmer.new
  swimmer_school.school_id = params[:swimmer_school]
  swimmer_school.save
  erb :"administrator"
end
MyApp.get "/edit_swimmer/:place" do
  @swimmer = Swimmer.find_by_id(params[:place])
  erb :"edit_swimmer"
end
MyApp.get "finish_update/:place" do
  @swimmer = Swimmer.find_by_id(params[:place])
  @swimmer.title = params[:edit_title]
  @swimmer.school_id = params[:edit_number]
  @swimmer.save
  erb :"swimmers"
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
  @conferences = Conference.all
  @eventss = Event.all
  @schools = School.all
  @signups = Signup.all
  @swimmers = Swimmer.all
  erb :"all_tables"
end

MyApp.get "/view_swimmers/:place" do
  @swimmer = Swimmer.find_by_id(params[:place])
  erb :"swimmer_list"
end
MyApp.get "/delete_swimmers/:place" do
  @swimmer = Swimmer.find_by_id(params[:place])
  @swimmer.delete
  erb :"administrator"
end
MyApp.get "/view_event/:place" do
  @event = Event.find_by_id(params[:place])
  erb :"event_list"
end
MyApp.get "/delete_event/:place" do
  @event = Event.find_by_id(params[:place])
  @event.delete
  erb :"administrator"
end
MyApp.get "/view_school/:holder" do
  @school = School.find_by_id(params[:holder])
  @schools = School.new
  erb :"school_list"
end
MyApp.get "/delete_school/:place" do
  @school = School.find_by_id(params[:place])
  @school.delete
  erb :"administrator"
end
MyApp.get "/view_conferences/:place" do
  @conference = Conference.find_by_id(params[:place])
  erb :"conference_list"
end
MyApp.get "/delete_conference/:place" do
  @conference = Conference.find_by_id(params[:place])
  @conference.delete
  erb :"administrator"
end
MyApp.get "/delete_signup/:placeholder" do
  @signup = Signup.find_by_id(params[:placeholder])
  @signup.delete
  erb :"administrator"
end

