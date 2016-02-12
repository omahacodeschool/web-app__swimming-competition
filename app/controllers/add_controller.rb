#Shows the form for adding an award
MyApp.get "/award" do 
  erb :"add/add_awards"
end

#Shows the form for adding a college
MyApp.get "/college" do 
  erb :"add/add_colleges"
end

#Shows the form for adding a competitor
MyApp.get "/competitor" do 
  erb :"add/add_competitors"
end

#Shows the form for adding a conference
MyApp.get "/conference" do 
  erb :"add/add_conferences"
end

#Shows the form for adding event details
MyApp.get "/eventdetail" do 
  erb :"add/add_event_details"
end

#Shows the form for adding an event
MyApp.get "/event" do 
  erb :"add/add_events"
end