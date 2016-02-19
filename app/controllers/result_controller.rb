MyApp.get "/results" do
  @events = Event.all
  @results = Result.all
  erb :"result/results"
end

MyApp.get "/view_results/:event" do
  @event = Event.find_by_id(params[:event])
  @results = Result.all
  erb :"result/view_results"
end

MyApp.get "/create_result" do
  erb :"result/create_result"
end

# view that shows the user that they have successfully created a 'result'.
MyApp.get "/result/success" do
  x = Result.new
  # x.result_name is a new Active Record method that sets a Result Object attribute name to 'result_name'.
  x.signup_id = params["signup_id"]
  x.time = params["time"]
  # x.save is a new Active Record method that saves that Result Object to the 'results' table.
  x.save
  # binding.pry # what is 'x'?
  erb :"result/create_result_success"
end