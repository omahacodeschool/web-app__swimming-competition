MyApp.post "/delete_data_confirmation" do
  
  Swimmer.delete_all
  Event.delete_all
  School.delete_all
  Signup.delete_all
  Conference.delete_all

  erb :"/delete_data/delete_data_confirmation"
end


MyApp.get "/delete_data" do

  @all_swim_names = Swimmer.get_all_swimmer_names
  @all_event_names = Event.get_all_event_names
  @all_school_names = School.get_all_school_names
  @all_conference_names = Conference.get_all_conference_names

  erb :"/delete_data/delete_data"
end