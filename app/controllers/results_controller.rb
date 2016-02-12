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

MyApp.get "/competitors_by_event_result/:kittenmitten" do
  @competitor = Competitor.find_by_id(params[:kittenmitten])
end