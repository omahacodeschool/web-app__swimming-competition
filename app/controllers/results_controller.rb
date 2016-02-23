MyApp.get "/results" do
  @results = Result.all
  erb :"main/results"
end

MyApp.get "/add/result_form_add" do
  erb :"main/add/result_form_add"
end

MyApp.post "/result_added" do #this isn't working when there's no event_id input
  @event_id = params[:event_id]
  @event = Event.find_by_id(@event_id)


  @lock_check = @event.lock
  if @lock_check == true
    erb :"main/locked_error_page"
  else
    x = Result.new
    if x.is_valid? == false
      erb :"main/errors/generic_errors"
    else
      x.event_id = params[:event_id]
      x.competitor_id = params[:competitor_id]
      x.final_time = params[:final_time]
      x.save
      erb :"main/add/result_added"
    end
  end
end

MyApp.get "/results_top_three/:id" do
  @results = Result.where({"event_id" => params[:id]})
  @ordered_results = @results.order(:final_time).to_a
  if @ordered_results.length <= 2
    erb :"main/no_top_three_yet"
  else
    @three_best_times = []
    @ordered_results_competitor_id = []
    @ordered_results_final_time = []
    @ordered_results.each do |i|
      @ordered_results_competitor_id << i.competitor_id
      @ordered_results_final_time << i.final_time
    end
    if @ordered_results_competitor_id.compact.length == @ordered_results_final_time.compact.length
      3.times do 
        @three_best_times << @ordered_results[0]
        @ordered_results.shift
      end
      erb :"main/results_top_three"
    else
      erb :"main/results_not_in_yet"
    end
  end
end

MyApp.get "/results_by_event/:id" do
  @results = Result.where({"event_id" => params[:id]})
  @ordered_results = @results.order(:final_time)
  erb :"main/results_by_event"
end

MyApp.get "/delete/result_deleted/:dogfood" do
  @result = Result.find_by_id(params[:dogfood])
  @result = Event.find_by_id(@result)
  @lock_check = @result.lock
  if @lock_check == true
    erb :"main/locked_error_page/:dogfood"
  else
    @result.delete
    erb :"main/delete/result_deleted"
  end
end

MyApp.get "/update/result_update_form/:popsicle" do
  @result = Result.find_by_id(params[:popsicle])
  @result = Event.find_by_id(@result)
  @lock_check = @result.lock
  if @lock_check == true
    erb :"main/locked_error_page/:popsicle"
  else
    erb :"main/update/result_update_form"
  end
end

MyApp.post "/update/result_updated/:stopsign" do 
  @result = Result.find_by_id(params[:stopsign])
  @result.event_id = params[:event_id]
  @result.competitor_id = params[:competitor_id]
  @result.final_time = params[:final_time]
  @result.save
  erb :"main/update/result_updated"
end