#Shows all awards that can be updated
MyApp.get "/all_awards_to_update" do 
  @events = Event.all
  @competitors = Competitor.all  
  @awards = Award.all
  
  erb :"update_landing/select_award_to_update"
end

#Shows all colleges that can be updated
MyApp.get "/all_colleges_to_update" do 
  @colleges = College.all 

  erb :"update_landing/select_college_to_update"
end

#Shows all competitors that can be updated
MyApp.get "/all_competitors_to_update" do 
  @competitors = Competitor.all 

  erb :"update_landing/select_competitor_to_update"
end

#Shows all conference that can be updated
MyApp.get "/all_conferences_to_update" do 
  @conferences = Conference.all 

  erb :"update_landing/select_conference_to_update"
end

#Shows all event details that can be updated
MyApp.get "/all_event_details_to_update" do 
  @events = Event.all
  @competitors = Competitor.all 
  @event_details = EventDetail.all 

  erb :"update_landing/select_event_detail_to_update"
end

#Shows all events that can be updated
MyApp.get "/all_events_to_update" do 
  @events = Event.all

  erb :"update_landing/select_event_to_update"
end