MyApp.get "/results" do
  @results = Result.all
  erb :"main/results"
end

MyApp.get "/add/result_form_add" do
  @competitors = Competitor.all
  @events = Event.all
  @styles = Style.all
  erb :"main/add/result_form_add"
end

MyApp.post "/result_added" do
    @event_gender = params[:gender]
    @event_distance = params[:distance]
    @event_style = params[:style]
    @event_object_array = Event.where({"gender" => @event_gender, "distance" => @event_distance, "style_id" => @event_style})
    @event_object = @event_object_array[0]
  x = Result.new
  x.event_id = @event_object.id
    @first_name = params[:firstname]
    @last_name = params[:lastname]
    @competitor_object_array = Competitor.where ({"first_name" => @first_name, "last_name" => @last_name})
    @competitor_object = @competitor_object_array[0]
  x.competitor_id = @competitor_object.id
  x.final_time = params[:final_time]
  @lock_check = @event_object.lock
  if @lock_check == true
    erb :"main/errors/locked_error_page"
  else
    if x.is_valid? == false
      @error_object = x
      erb :"main/errors/generic_errors"
    else
      x.save
      erb :"main/add/result_added"
    end
  end
end

MyApp.get "/results_top_three/:id" do
  @results = Result.where({"event_id" => params[:id]})
  @ordered_results = @results.order(:final_time).to_a
  if @ordered_results.length <= 2
    erb :"main/errors/no_top_three_yet"
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
      erb :"main/errors/results_not_in_yet"
    end
  end
end

MyApp.get "/results_by_event/:id" do
  @results = Result.where({"event_id" => params[:id]})
  @ordered_results = @results.order(:final_time)
  erb :"main/results_by_event"
end

MyApp.get "/delete/result_deleted/:dogfood" do
  @result_object = Result.find_by_id(params[:dogfood])
  @results_event_id = @result_object.event_id
  @event_object = Event.find_by_id(@results_event_id)
  @lock_check = @event_object.lock
  if @lock_check == true
    erb :"main/errors/locked_error_page"
  else
    @result_object.delete
    erb :"main/delete/result_deleted"
  end
end

MyApp.get "/update/result_update_form/:popsicle" do
  @competitors = Competitor.all
  @events = Event.all
  @styles = Style.all
  @result_object = Result.find_by_id(params[:popsicle])
  @results_event_id = @result_object.event_id
  @event_object = Event.find_by_id(@results_event_id)
  @lock_check = @event_object.lock
  if @lock_check == true
    erb :"main/errors/locked_error_page"
  else
    @result = @result_object
    erb :"main/update/result_update_form"
  end
end

MyApp.post "/update/result_updated/:stopsign" do 
  @result = Result.find_by_id(params[:stopsign])
  @event_gender = params[:gender]
  @event_distance = params[:distance]
  @event_style = params[:style]
  @event_object_array = Event.where({"gender" => @event_gender, "distance" => @event_distance, "style_id" => @event_style})
    @event_object = @event_object_array[0]
  @result.event_id = @event_object.id
  @first_name = params[:firstname]
  @last_name = params[:lastname]
  @competitor_object_array = Competitor.where ({"first_name" => @first_name, "last_name" => @last_name})
  @competitor_object = @competitor_object_array[0]
  @result.competitor_id = @competitor_object.id
  @result.final_time = params[:final_time]
  if @result.is_valid? == false
    @error_object = @result
    erb :"main/errors/generic_errors"
  else
    @result.save
    erb :"main/update/result_updated"
  end
end

MyApp.get "/add/competitor_to_event/:id" do
  @competitor = Competitor.find_by_id(params[:id])
  @events = Event.all
  erb :"main/add/competitor_to_event"
end

MyApp.post "/add/competitor_to_event_added/:id" do
  @events = params[:events]
  @events.each do |e|
    @event_object = Event.find_by_id(e)
    @lock_check = @event_object.lock
    binding.pry
    if @lock_check == false
      @new_result = Result.new
      @new_result.event_id = e
      @new_result.competitor_id = params[:id]
      @new_result.save
    else
      next
    end
  end
  erb :"main/add/competitor_to_event_added"
end