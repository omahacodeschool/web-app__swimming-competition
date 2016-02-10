MyApp.get "/conferences" do
  x = Conference.new
  x.conference = params["conf"]
  x.save
  @y = [x.conference]
  erb :"/conferences"
end