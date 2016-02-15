MyApp.get "/signup" do
  @competitors = Competitor.all
  @events = Event.all
  erb :"signup/register_for_event"
end

MyApp.get "/signup_successful" do
  x = Signup.new
  x.event_id = params["event"]
  x.competitor_id = params ["competitor"]
  x.save
  erb :"signup/registration_successful"
end