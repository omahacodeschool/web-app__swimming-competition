MyApp.post "/runs_form" do
  @runs = Run.all
  @run    = Run.new
  
  @run.event_id   = (params["run_event"].to_i)
  @run.swimmer_id = (params["run_swimmer"].to_i)
  @run.run_time   = (params["run_time"].to_f)

  if @run.is_valid
    @run.save

    erb :"main/add_runs"
  else
    erb :"main/error"
  end
end

MyApp.get "/delete_run/:run_id" do
  @runs = Run.all
  @run  = Run.find_by_id(params[:run_id])
  
  @run.delete

  erb :"main/add_runs"
end

MyApp.get "/update_run/:run_id" do
  @runs = Run.all
  @run  = Run.find_by_id(params[:run_id])

  erb :"main/update_run"
end

MyApp.post "/process_run_update/:run_id" do
  @run = Run.find_by_id(params[:run_id])

  @run.swimmer_id  = (params["run_swimmer_update"].to_i)
  @run.run_time    = (params["run_time_update"].to_f)

  if @run.is_valid
    @run.save

    erb :"main/add_runs"
  else
    erb :"main/error"
  end
end