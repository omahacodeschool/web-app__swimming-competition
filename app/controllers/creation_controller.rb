MyApp.post "/admin/conference_added" do
  @conference = Conference.new
  @conference.name = params["name"]
  @conference.save
  erb :"admin/create/conference_added"
end

MyApp.post "/admin/event_added" do
  @event = Event.new
  @event.name = params["name"]
  @event.save
  erb :"admin/create/event_added"
end

MyApp.post "/admin/school_added" do
  @school = School.new
  @school.name = params["name"]
  @school.conference_id = params["conference_id"]
  @school.save
  erb :"admin/create/school_added"
end

MyApp.post "/admin/runner_added" do
  @runner = Runner.new
  @runner.name = params["name"]
  @runner.school_id = params["school_id"]
  @runner.save
  erb :"admin/create/runner_added"
end

MyApp.post "/admin/registration_added" do
  @registration = Registration.new
  @registration.runner_id = params["runner_id"]
  @registration.event_id = params["event_id"]
  @registration.save
  erb :"admin/create/registration_added"
end

MyApp.post "/admin/result_added" do

  erb :"admin/create/result_added"
end


