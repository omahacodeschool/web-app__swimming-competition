MyApp.get "/" do
  @schools = School.all
  @events = Event.all
  @results = Result.all
  @competitors = Competitor.all
  erb :"main/main"
end