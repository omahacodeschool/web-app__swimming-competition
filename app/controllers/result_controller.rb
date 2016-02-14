MyApp.get "/results" do
	@list_results = Result.all
  erb :"results/list_results"
end

MyApp.get "/results/add_new" do
	@list_events =  Event.all
	@list_competitors = Competitor.all
  erb :"results/add_result"
end

MyApp.get "/add_result" do
	x = Result.new
	x.event_id = params[:event_id]
	x.competitor_id = params[:competitor_id]
	x.time = params[:time]
	x.save
  erb :"success"
end

MyApp.get "/results/add_time/:competitor_id/:event_id" do
  erb :"results/add_time"
end

MyApp.get "/add_result/time/:competitor_id/:event_id" do
	result = Result.where(competitor_id: params[:competitor_id], event_id: params[:event_id]).first
	result.time = params[:time]
	result.save
  erb :"success"
end

MyApp.get "/result_details/:result_id" do
  @result = Result.find(params[:result_id])
  erb :"results/result_details"
end

MyApp.get "/results/edit/:result_id" do
  	@result = Result.find(params[:result_id])
  	@list_events =  Event.all
  	@list_competitors = Competitor.all
	erb :"results/edit_result"
end

MyApp.get "/edit_result/:result_id" do
	@result = Result.find(params[:result_id])
	@result.update_attributes({event_id: params['event_id'], competitor_id: params['competitor_id'], time: params['time']})
	@result.save
	erb :"success"
end

MyApp.get "/delete_result/:result_id" do
	@result = Result.find(params[:result_id])
	@result.delete
	erb :"success"
end
