# shows the form for adding a conference.
MyApp.get "/create_conference" do
  erb :"create/create_conference"
end

# shows the user they have successfully created a conference.
MyApp.get "/create_conference/success" do
  x = Conference.new
  x.conference_name = params["conference_name"]
  # this should be a new Active Record method that sets a Conference Object attribute name to the information passed through params
  x.save
  # this should be a new Active Record method that saves that Conference Object to the conferences table
  erb :"create/create_conference_success"
end

# shows all conferences
MyApp.get "/conferences" do
  @conferences = Conference.all
  # binding.pry
  erb :"lists/all_conferences"
end