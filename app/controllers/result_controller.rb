MyApp.get "/results" do
  # .all must be run on the class Result itself.
  # @results can be used in the view.
  @events = Signup.all
 # binding.pry # what is '@results'?
erb :"result/all_results"
end

# view that shows the form for adding an 'event'.
MyApp.get "/create_result/:event" do
  erb :"result/create_result/"
end

# view that shows the user that they have successfully created a 'result'.
MyApp.get "/create_result/success" do
  x = Result.new
  # x.result_name is a new Active Record method that sets a Result Object attribute name to 'result_name'.
  x.signup_id = params["signup_id"]
  x.time = params["time"]
  # x.save is a new Active Record method that saves that Result Object to the 'results' table.
  x.save
  # binding.pry # what is 'x'?
  erb :"result/create_result_success"
end