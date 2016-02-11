MyApp.get "/" do
 @data = Result.all
@competitors = Competitor.all
@activites = Activity.all
  erb :"/overview"
end
