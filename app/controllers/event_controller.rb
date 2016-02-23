MyApp.get "/events" do
	@list_events = Event.all
  erb :"events/list_events"
end

MyApp.get "/events/add_new" do
  erb :"events/add_event"
end

MyApp.post "/add_event" do
	event = Event.new
	event.name = params[:name]
	if event.is_valid == true
		event.save
  		redirect :"event_info/#{event.id}"
	else
		@error_object = event
		erb :"error"
	end
end

MyApp.get "/event_info/:event_id" do
   @event = Event.find(params[:event_id])
   @list_competitors = Competitor.all
 erb :"events/event_info"
end

MyApp.post "/add_entry/:event_id" do
	if Result.where(competitor_id: params[:competitor_id], event_id: params[:event_id]).blank?
		x = Result.new
		x.event_id = params[:event_id]
		x.competitor_id = params[:competitor_id]
		x.save
  	redirect :"event_info/#{x.event_id}"
  else 
  	erb :"events/already_entered"
  end
end

MyApp.post "/entry_delete/:competitor_id/:event_id" do
	@result = Result.where(competitor_id: params[:competitor_id], event_id: params[:event_id])
	@result.delete
  redirect :"events"
end

MyApp.get "/results/add_time/:competitor_id/:event_id" do
  erb :"results/add_time"
end

MyApp.get "/add_result/time/:competitor_id/:event_id" do
	result = Result.where(competitor_id: params[:competitor_id], event_id: params[:event_id]).first
	result.time = params[:time]
	if result.is_valid == true
		result.save
  		redirect :"event_info/#{result.event_id}"
	else
		@error_object = result
		erb :"error"
	end
end

MyApp.get "/events/edit/:event_id" do
  	@event = Event.find(params[:event_id])
  erb :"events/edit_event"
end

MyApp.post "/edit_event/:event_id" do
	@event = Event.find(params[:event_id])
	@event.assign_attributes({name: params['name']})
	if @event.is_valid == true
		@event.save
  		redirect :"event_info/#{@event.id}"
	else
		@error_object = @event
		erb :"error"
	end
end

MyApp.post "/event_delete/:event_id" do
	@event = Event.find(params[:event_id])
	@event.delete_result_info
	@event.delete
  redirect :"events"
end

MyApp.post "/lock_event/:event_id" do
	@event = Event.find(params[:event_id])
	@event.locked = true
	@event.save
  redirect :"events"
end


