#Processes the form for updating an award
MyApp.post "/award_updated/:num" do 
  @awards = Award.find_by_id(params[:num])
  @awards.event_id = params["evnt_id"]
  @awards.competitor_id = params["comp_id"]
  @awards.rank = params["fnsh_time"]
  @awards.save

  erb :"updated/award_updated"
end

#Processes the form for updating a college
MyApp.post "/college_updated/:num" do 
  @colleges = College.find_by_id(params[:num])
  @colleges.college_name = params["coll_name"]
  @colleges.conference_id = params["conf_id"]
  @colleges.save

  erb :"updated/college_updated"
end

#Processes the form for updating a competitor
MyApp.post "/competitor_updated/:num" do 
  @competitors = Competitor.find_by_id(params[:num])
  @competitors.competitor_name = params["comp_name"]
  @competitors.college_id = params["coll_id"]
  @competitors.save

  erb :"updated/competitor_updated"
end

#Processes the form for updating a conference
MyApp.post "/conference_updated/:num" do 
  @conferences = Conference.find_by_id(params[:num])
  @conferences.conference_name = params["conf_name"]
  @conferences.save

  erb :"updated/conference_updated"
end

#Processes the form for updating an event
MyApp.post "/event_updated/:num" do
  @events = Event.find_by_id(params[:num]) 

  if @events.locked == false
    @events.event_name = params["evnt_name"]
    @events.save 

    erb :"updated/event_updated"
  else

    erb :"misc/event_locked"
  end
end

#Processes the form for updating event details
MyApp.post "/event_detail_updated/:num" do
  @event_details = EventDetail.find_by_id(params[:num])
  @event_details.event_id = params["evnt_id"]
  @event_details.competitor_id = params["comp_id"]
  @event_details.finish_time = params["fnsh_time"] 
  @event_details.save   

  erb :"updated/event_detail_updated"
end