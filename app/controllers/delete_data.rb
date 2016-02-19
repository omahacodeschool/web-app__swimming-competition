MyApp.post "/view_delete_data_confirmation" do
  Swimmer.delete_all
  Event.delete_all
  School.delete_all
  Signup.delete_all
  Conference.delete_all

  erb :"view_delete_data_confirmation"
end


MyApp.get "/view_delete_data" do

  @all_swim_names = []
  @all_event_names = []
  @all_school_names = []
  @all_conference_names = []


  Swimmer.all.each do |s|
    x = s.swimmer_name
    @all_swim_names << x
  end

  Event.all.each do |s|
    x = s.event_name
    @all_event_names << x
  end

  School.all.each do |s|
    x = s.school_name
    @all_school_names << x
  end

  Conference.all.each do |s|
    x = s.conference_name
    @all_conference_names << x
  end

  erb :"view_delete_data"
end