MyApp.get "/" do
  @data = Result.all
  @competitors = Competitor.all
  @activites = Activity.all
  @colleges = College.all
  @conferences = Conference.all
    erb :"/overview"
end
