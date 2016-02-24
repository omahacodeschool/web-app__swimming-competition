#Shows form for updating an award
MyApp.get "/update_award/:num" do 
  @events = Event.find_by_id(params[:num])
  @competitors = Competitor.find_by_id(params[:num]) 
  @awards = Award.find_by_id(params[:num])
  @events = Event.all 
  @competitors = Competitor.all 
  
  erb :"update/update_award"
end

#Shows form for updating a college
MyApp.get "/update_college/:num" do 
  @colleges = College.find_by_id(params[:num])

  erb :"update/update_college"
end

#Shows form for updating a competitor
MyApp.get "/update_competitor/:num" do 
  @competitors = Competitor.find_by_id(params[:num]) 

  erb :"update/update_competitor"
end

#Shows form for updating a conference
MyApp.get "/update_conference/:num" do 
  @conferences = Conference.find_by_id(params[:num]) 

  erb :"update/update_conference"
end

#Shows form for updating an event detail
MyApp.get "/update_event_detail/:num" do  
  @event_details = EventDetail.find_by_id(params[:num])
  @events = Event.all 
  @competitors = Competitor.all 

  erb :"update/update_event_detail"
end

#Shows form for updating an event
MyApp.get "/update_event/:num" do 
  @events = Event.find_by_id(params[:num])

  erb :"update/update_event"
end