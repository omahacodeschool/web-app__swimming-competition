#Processes the form for updating an award
MyApp.get "/award_updated" do 
  x = Award.new
  x.event_id = params["event_id"]
  x.competitor_id = params["competitor_id"]
  x.rank = params["rank"]
  x.save

  erb :"updated/award_updated"
end

#Processes the form for updating a college
MyApp.get "/college_updated" do 
  x = College.new
  x.college_name = params["college_name"]
  x.conference_id = params["conference_id"]
  x.save

  erb :"updated/college_updated"
end

#Processes the form for updating a competitor
MyApp.get "/competitor_updated" do 
  x = Competitor.new
  x.competitor_name = params["competitor_name"]
  x.college_id = params["college_id"]
  x.save

  erb :"updated/competitor_updated"
end

#Processes the form for updating a conference
MyApp.get "/conference_updated" do 
  x = Conference.new
  x.conference_name = params["conference_name"]
  x.save

  erb :"updated/conference_updated"
end

#Processes the form for updating an event
MyApp.get "/event_updated" do 
  x = Event.new
  x.event_name = params["event_name"]
  x.save

  erb :"updated/event_updated"
end

#Processes the form for updating event details
MyApp.get "/event_detail_updated" do 
  x = EventDetail.new
  x.event_id = params["event_id"]
  x.competitor_id = params["competitor_id"]
  x.finish_time = params["finish_time"]
  x.save

  erb :"updated/event_detail_updated"
end