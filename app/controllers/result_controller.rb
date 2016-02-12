# view that shows the form for adding an 'event'.
MyApp.get "/create_result" do
  erb :"create/create_result"
end

# view that shows the user that they have successfully created a 'result'.
MyApp.get "/create_result/success" do
  x = Result.new
  # x.result_name is a new Active Record method that sets a Result Object attribute name to 'result_name'.
  x.time = params["time_entered"]
  # x.save is a new Active Record method that saves that Result Object to the 'results' table.
  x.save
  # binding.pry # what is 'x'?
  erb :"create/create_result_success"
end