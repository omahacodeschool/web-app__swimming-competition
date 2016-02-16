#Shows all awards added
MyApp.get "/update_award" do 
  @events = Event.all
  @competitors = Competitor.all 
  @awards = Award.all
  
  erb :"update/update_award"
end

#Shows all colleges added
MyApp.get "/update_college/:num" do 
  @colleges = College.find_by_id(params[:num])

  erb :"update/update_college"
end

#Shows all competitors added
MyApp.get "/update_competitor" do 
  @competitors = Competitor.all 

  erb :"update/update_competitor"
end

#Shows all conference added
MyApp.get "/update_conference" do 
  @conferences = Conference.all 

  erb :"update/update_conference"
end

#Shows all event details added
MyApp.get "/update_event_detail" do 
  @events = Event.all
  @competitors = Competitor.all 
  @event_details = EventDetail.all 

  erb :"update/update_event_detail"
end

#Shows all events added
MyApp.get "/update_event" do 
  @events = Event.all

  erb :"update/update_event"
end