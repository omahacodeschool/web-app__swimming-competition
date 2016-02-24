MyApp.get "/" do
  erb :"homepage"
end

MyApp.get "/admin" do
  erb :"admin/admin"
end

MyApp.get "/events" do
  @events = Event.all
  erb :"events"
end

MyApp.get "/event/:number" do
  @event = Event.find_by_id(params[:number])
  @registrations = Registration.where({"event_id" => params[:number]})
  erb :"event"
end

MyApp.get "/schools" do
  @schools = School.all
  erb :"schools"
end

MyApp.get "/school/:number" do
  @school = School.find_by_id(params[:number])
  @runners = Runner.where({"school_id" => params[:number]})
  erb :"school"
end

MyApp.get "/runners" do
  @runners = Runner.all
  erb :"runners"
end

MyApp.get '/runner/:number' do
  @runner = Runner.find_by_id(params[:number])
  @registrations = Registration.where({"runner_id" => params[:number]})
  erb :"runner"
end




