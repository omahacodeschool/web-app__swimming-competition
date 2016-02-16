#Shows one award selected
MyApp.get "/all_awards" do 
  @events = Event.all
  @competitors = Competitor.all 
  @awards = Award.all
  
  erb :"view_one/view_award"
end

#Shows one college selected
MyApp.get "/all_colleges" do 
  @colleges = College.all 

  erb :"view_one/view_college/:num"
end

#Shows one competitor selected
MyApp.get "/all_competitors" do 
  @competitors = Competitor.all 

  erb :"view_one/view_competitor"
end

#Shows one conference selected
MyApp.get "/all_conferences" do 
  @conferences = Conference.all 

  erb :"view_one/view_conference"
end

#Shows one event detail selected
MyApp.get "/all_event_details" do 
  @events = Event.all
  @competitors = Competitor.all 
  @event_details = EventDetail.all 

  erb :"view_one/view_event_detail"
end

#Shows one event selected
MyApp.get "/all_events" do 
  @events = Event.all

  erb :"view_one/view_event"
end