MyApp.post "/runs_form" do
  @runs = Run.all
  @r    = Run.new
  
  @r.event_id   = (params["run_event"].to_i)
  @r.swimmer_id = (params["run_swimmer"].to_i)
  @r.run_time   = (params["run_time"].to_f)
  @r.save

  erb :"main/add_runs"
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
  @run.save

  erb :"main/add_runs"
end
#
# Not sure if I need to place this controller action in my Runs or Events
# controller
# If here, how do I know which set of Event runs is tied to any instance of
# the form being passed in?
MyApp.post "/run_complete_form" do
  @run = 
            
  @run.run_complete = (params["run_complete_check"])

  erb :"main/add_runs"
end