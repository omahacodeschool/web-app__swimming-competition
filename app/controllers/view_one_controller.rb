#Shows one award selected
MyApp.get "/view_award/:num" do 
  @awards = Award.find_by_id(params[:num])
  
  erb :"view_one/view_award"
end

#Shows one college selected
MyApp.get "/view_college/:num" do 
  @colleges = College.find_by_id(params[:num])

  erb :"view_one/view_college"
end

#Shows one competitor selected
MyApp.get "/view_competitor/:num" do 
  @competitors = Competitor.find_by_id(params[:num])

  erb :"view_one/view_competitor"
end

#Shows one conference selected
MyApp.get "/view_conference/:num" do 
  @conferences = Conference.find_by_id(params[:num])

  erb :"view_one/view_conference"
end

#Shows one event detail selected
MyApp.get "/view_event_detail/:num" do 
  @event_details = EventDetail.find_by_id(params[:num])

  erb :"view_one/view_event_detail"
end

#Shows one event selected
MyApp.get "/view_event/:num" do 
  @events = Event.find_by_id(params[:num])

  erb :"view_one/view_event"
end