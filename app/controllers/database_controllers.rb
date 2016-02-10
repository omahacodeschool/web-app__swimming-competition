
MyApp.get "/add_swimmer" do
  s = Swimmer.new
  s.swimmer_name = params["input_swimmer"]
  s.university_id = params[:university]
  s.save

  erb :"/success_swimmer"
end

MyApp.get "/add_conference" do
  c = Conference.new
  c.conference_name = params["input_conference"]
  c.save

  erb :"/success_conference"
end

MyApp.get "/add_university" do
  u = University.new
  u.university_name = params["input_univerity"]
  u.conference_id = params[:conference] #This is how I think I will access the conference ID.  Since 'input_conference' is already used and theoritcally everytime a conference is added it will have an ID. I believe this is how I would access that ID. 
  u.save

  erb :"/success_university"
end

MyApp.get "/add_event" do
  e = Event.new
  e.event_name = params["input_event"]
  e.save

  erb :"/success_event"
end

MyApp.get "/add_result" do
  r = Result.new
  r.swimmer_id = params[:swimmer]
  r.event_id = params[:event]
  r.recorded_time = params["input_time"] #Because this is the first time a swimmers time is added somewhere I think I need to use this form of a param.  "input_time" is a hypothetical variable I think I'll use.  
  r.save

  erb :"/success_result"
end

MyApp.get "/current_standings" do
  c = Standing.new
  c.event_id = params[:event]
  c.first_id = params[:result_1]
  c.second_id = params[:result_2]
  c.third_id = params[:result_3] 
  #Note: :result I think might need to change this since this controller may need some Ruby to figure out the 3 fastest times per event. 
  c.save

  erb :"/show_standings"
end





