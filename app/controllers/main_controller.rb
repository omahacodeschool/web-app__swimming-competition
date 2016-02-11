MyApp.get "/" do
 @data = Result.all
@competitors = Competitor.all
@activites = Activity.all
  erb :"/overview"
end
MyApp.get "/admin/admin_overview" do


  erb :"/admin/admin_overview"
end