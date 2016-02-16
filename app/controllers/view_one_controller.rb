#Shows one award selected
MyApp.get "/view_award" do 
  @events = Event.all
  @competitors = Competitor.all 
  @awards = Award.all
  
  erb :"view_one/view_award"
end

#Shows one college selected
MyApp.get "/view_college/:num" do 
  @colleges = College.find_by_id(params[:num])

  erb :"view_one/view_college"
end

#Shows one competitor selected
MyApp.get "/view_competitor" do 
  @competitors = Competitor.all 

  erb :"view_one/view_competitor"
end

#Shows one conference selected
MyApp.get "/view_conference" do 
  @conferences = Conference.all 

  erb :"view_one/view_conference"
end

#Shows one event detail selected
MyApp.get "/view_event_detail" do 
  @events = Event.all
  @competitors = Competitor.all 
  @event_details = EventDetail.all 

  erb :"view_one/view_event_detail"
end

#Shows one event selected
MyApp.get "/view_event" do 
  @events = Event.all

  erb :"view_one/view_event"
end