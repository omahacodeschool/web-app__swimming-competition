#Shows all awards added
MyApp.get "/all_awards" do 
  @awards = Award.all
  
  erb :"review/view_all_awards"
end

#Shows all colleges added
MyApp.get "/all_colleges" do 
  @colleges = College.all 

  erb :"review/view_all_colleges"
end

#Shows all competitors added
MyApp.get "/all_competitors" do 
  @competitors = Competitor.all 

  erb :"review/view_all_competitors"
end

#Shows all conference added
MyApp.get "/all_conferences" do 
  @conferences = Conference.all 

  erb :"review/view_all_conferences"
end

#Shows all event details added
MyApp.get "/all_event_details" do 
  @event_details = EventDetail.all 

  erb :"review/view_all_event_details"
end

#Shows all events added
MyApp.get "/all_events" do 
  @events = Event.all

  erb :"review/view_all_events"
end