# view that shows the form for adding a conference.
MyApp.get "/create_conference" do
  erb :"create/create_conference"
end

# view tha shows the user they have successfully created a conference.
MyApp.get "/create_conference/success" do
  x = Conference.new
  # x.conference_name is a new Active Record method that sets a Conference Object attribute name to "conference_name".
  x.conference_name = params["conference_entered"]
  # x.save is a new Active Record method that saves that Conference Object to the "conferences" table.
  x.save
  # binding.pry # what is 'x'?
  erb :"create/create_conference_success"
end

# view that shows all conferences
MyApp.get "/conferences" do
  # .all gets back a list of all conferences from class Conference
  # @conferences can be used in a view
  @conferences = Conference.all
  # binding.pry # what is '@conferences'?
  erb :"lists/all_conferences"
end