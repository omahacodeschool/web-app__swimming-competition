#Processes deletion of an award  #DOESN'T WORK
MyApp.get "/delete_award" do 
  @events = Event.all
  @competitors = Competitor.all 
  @awards = Award.all
  
  erb :"delete/delete_award"
end

#Processes deletion of a college
MyApp.get "/delete_college/:b" do 
  @colleges = College.find_by_id(params[:b]) 
  @colleges.delete

  erb :"delete/delete_college"
end

#Processes deletion of a competitor
MyApp.get "/delete_competitor/:b" do 
  @competitors = Competitor.find_by_id(params[:b]) 
  @competitors.delete

  erb :"delete/delete_competitor"
end

#Processes deletion of a conference
MyApp.get "/delete_conference/:b" do 
  @conferences = Conference.find_by_id(params[:b]) 

  if@conferences.get_deleted
    @conferences.delete
    #also delete colleges linked by conference_id

  erb :"delete/delete_conference"
end

#Processes deletion of an event event_details  #DOESN'T WORK
MyApp.get "/delete_event_detail" do 
  @events = Event.all
  @competitors = Competitor.all 
  @event_details = EventDetail.all 

  erb :"delete/delete_event_detail"
end

#Processes deletion of an event
MyApp.get "/delete_event/:b" do 
  @events = Event.find_by_id(params[:b])
  @events.delete

  erb :"delete/delete_event"
end