MyApp.get "/signup"
  @competitors = Competitor.all
  @events = Event.all
  erb :"signup/register_for_event"
end