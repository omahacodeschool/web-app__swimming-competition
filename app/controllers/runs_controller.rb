MyApp.get "/runs_form" do
  @runs = Run.all

  @r = Run.new
  @r.event_id   = (params["run_event"].to_i)
  @r.swimmer_id = (params["run_swimmer"].to_i)
  @r.run_time   = (params["run_time"].to_f)
  @r.save

  erb :"main/add_runs"
end

