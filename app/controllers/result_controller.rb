# view that shows the form for adding an 'event'.
MyApp.get "/create_result" do
  @events = Event.all
  erb :"result/create_result"
end

MyApp.get "/create_result/event/:number" do
  @signups = Signup.all
  x = Result.new


  erb :"result/create_result_event"
end

# view that shows the user that they have successfully created a 'result'.
MyApp.get "/create_result/success" do
  x = Result.new
  # x.result_name is a new Active Record method that sets a Result Object attribute name to 'result_name'.
  x.time = params["time_entered"]
  # x.save is a new Active Record method that saves that Result Object to the 'results' table.
  x.save
  # binding.pry # what is 'x'?
  erb :"result/create_result_success"
end

MyApp.get "/results" do
  # .all must be run on the class Result itself.
  # @results can be used in the view.
  @results = Result.all
 # binding.pry # what is '@results'?
erb :"result/all_results"
end