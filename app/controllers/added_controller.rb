#Processes the form for adding an award
MyApp.get "/award_added" do 
  x = Award.new
  x.rank = params["rank"]
  x.save

  erb :"added/award_added"
end

#Processes the form for adding a college
MyApp.get "/college_added" do 
  x = College.new
  x.college_name = params["college_name"]
  x.save

  erb :"added/college_added"
end

#Processes the form for adding a competitor
MyApp.get "/competitor_added" do 
  x = Competitor.new
  x.competitor_name = params["competitor_name"]
  x.save

  erb :"added/competitor_added"
end

#Processes the form for adding a conference
MyApp.get "/conference_added" do 
  x = Conference.new
  x.conference_name = params["conference_name"]
  x.save

  erb :"added/conference_added"
end

#Processes the form to add an event
MyApp.get "/event_added" do 
  x = Event.new
  x.event_name = params["event_name"]
  x.save

  erb :"added/event_added"
end

#Processes the form to add event details
MyApp.get "/event_detail_added" do 
  x = EventDetail.new
  x.finish_time = params["finish_time"]
  x.save

  erb :"added/event_detail_added"
end