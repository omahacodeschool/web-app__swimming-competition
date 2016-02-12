#Processes the form for adding an award
MyApp.get "/award_added" do 
  x = Event.new
  x.name = params["event_name"]
  x.save

  erb :"added/event_added"
end

#Processes the form for adding a college
MyApp.get "/college_added" do 
  x = College.new
  
  x.name = params["college_name"]     #need something that links to conf!!!
  x.save

  erb :"added/college_added"
end

#Processes the form for adding a competitor
MyApp.get "/competitor_added" do 
  x = Competitor.new
  x.name = params["competitor_name"]   #need something that links to college!!!
  x.save

  erb :"added/competitor_added"
end

#Processes the form for adding a conference
MyApp.get "/conference_added" do 
  x = Conference.new
  x.name = params["conference_name"]
  x.save

  erb :"added/conference_added"
end

#Processes the form to add an event
MyApp.get "/event_added" do 
  x = Event.new
  x.name = params["event_name"]
  x.save

  erb :"added/event_added"
end
