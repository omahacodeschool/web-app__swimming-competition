#Processes the form for adding an award
#need something that ties to event 
#rank refers to time in event details
MyApp.get "/award_added" do 
  x = Award.new
  x.name = params["award_name"]
  x.save

  erb :"added/award_added"
end

#Processes the form for adding a college
#need something that ties to conf!!!
MyApp.get "/college_added" do 
  x = College.new

  x.name = params["college_name"]
  x.save

  erb :"added/college_added"
end

#Processes the form for adding a competitor
#need something that ties to college!!!
MyApp.get "/competitor_added" do 
  x = Competitor.new
  x.name = params["competitor_name"]
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

#Processes the form to add event details
#need something that ties to event!!!
MyApp.get "/event_detail_added" do 
  x = EventDetail.new
  x.name = params["event_detail"]
  x.save

  erb :"added/event_detail_added"
end