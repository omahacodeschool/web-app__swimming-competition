#Shows all awards added
MyApp.get "/all_awards" do 
  erb :"review/view_all_awards"
end

#Shows all colleges added
MyApp.get "/all_colleges" do 
  erb :"review/view_all_colleges"
end

#Shows all competitors added
MyApp.get "/all_competitors" do 
  erb :"review/view_all_competitors"
end

#Shows all conference added
MyApp.get "/all_conferences" do 
  erb :"review/view_all_conferences"
end

#Shows all event details added
MyApp.get "/all_event_details" do 
  erb :"review/view_all_event_details"
end

#Shows all events added
MyApp.get "/all_events" do 
  erb :"review/view_all_events"
end