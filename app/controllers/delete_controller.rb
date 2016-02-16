#Shows one award selected
MyApp.get "/delete_award" do 
  @events = Event.all
  @competitors = Competitor.all 
  @awards = Award.all
  
  erb :"delete/delete_award"
end

#Shows one college selected
MyApp.get "/delete_college/:b" do 
  @colleges = College.find_by_id(params[:b]) 
  @colleges.delete

  erb :"delete/delete_college"
end

#Shows one competitor selected
MyApp.get "/delete_competitor/:b" do 
  @competitors = Competitor.find_by_id(params[:b]) 
  @competitors.delete

  erb :"delete/delete_competitor"
end

#Shows one conference selected
MyApp.get "/delete_conference/:b" do 
  @conferences = Conference.find_by_id(params[:b]) 
  @conferences.delete

  erb :"delete/delete_conference"
end

#Shows one event detail selected
MyApp.get "/delete_event_detail" do 
  @events = Event.all
  @competitors = Competitor.all 
  @event_details = EventDetail.all 

  erb :"delete/delete_event_detail"
end

#Shows one event selected
MyApp.get "/delete_event/:b" do 
  @events = Event.find_by_id(params[:b])
  @events.delete

  erb :"delete/delete_event"
end