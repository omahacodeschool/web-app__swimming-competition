MyApp.get "/results" do
  @results = Result.all
  erb :"main/results"
end

MyApp.get "/result_added" do
  x = Result.new
  x.event_id = params[:event_id]
  x.competitor_id = params[:competitor_id]
  x.final_time = params[:final_time]
  x.save
  erb :"main/result_added"
end

MyApp.get "/results_top_three" do
  
  erb :"main/results_top_three"
end

MyApp.get "/competitors_by_event_result/:kittenmitten" do
  @competitor = Competitor.find_by_id(params[:kittenmitten])
end

MyApp.get "/delete/result_deleted/:dogfood" do
  @result = Result.find_by_id(params[:dogfood])
  @result.delete
  erb :"main/delete/result_deleted"
end