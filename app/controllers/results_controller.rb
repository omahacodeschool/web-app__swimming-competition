MyApp.get "/results" do
  @results = Result.all
  @test = Result.new
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