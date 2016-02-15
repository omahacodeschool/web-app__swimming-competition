#Add Swimmer to DB
MyApp.post "/add_swimmer" do
  s = Swimmer.new
  s.swimmer_name = params["input_swimmer"]
  s.university_id = params[:university_id]
  s.save

  erb :"/success/success_swimmer"
end

#Delete Swimmer from DB
MyApp.get "/delete_swimmer/:id_of_swimmer" do
  @s = Swimmer.find_by_id(params[:id_of_swimmer])
  @r = Result.find_by_id(@s.id)
  @s.delete
  @r.delete
  erb :"/success/delete_swimmer"
end

MyApp.post "/add_conference" do
  c = Conference.new
  c.conference_name = params["input_conference"]
  c.save
  erb :"/success/success_conference"
end

MyApp.get "/delete_conference/:id_of_conference" do
  @c = Conference.find_by_id(params[:id_of_conference])
  @u = University.where({"conference_id" => params[:id_of_conference]}).to_a
  if @u.empty? == false
    @message = "Warning, there are still universities in this conference. Delete them before continuing."
  else
    @message = "Conference Successfully Deleted!"
    @c.delete
  end

  erb :"/success/delete_conference"
end

MyApp.post "/add_university" do
  @u = University.new
  @u.university_name = params["input_university"]
  @u.conference_id = params[:conference_id] 
  @u.save
  #binding.pry
  erb :"/success/success_university"
end

#Delete University from DB
MyApp.get "/delete_university/:id_of_university" do
  @s = University.find_by_id(params[:id_of_university])
  @x = Swimmer.where({"university_id" => @s.id }) 
  @y = Result.where({"swimmer_id" => @x.ids})

  @s.delete
  @x.delete_all
  @y.delete_all

  erb :"/success/delete_university"
end

MyApp.post "/add_event" do
  e = Event.new
  e.event_name = params["input_event"]
  e.event_locked = false
  e.save

  erb :"/success/success_event"
end
#Delete event and all results tied to it.
MyApp.get "/delete_event/:id_of_event" do
  @s = Event.find_by_id(params[:id_of_event])
  @y = Result.where({"event_id" => @s.id})
  if @s.event_locked == true
    @message = "This event is currently locked."
  else
    @message = "Event successfully deleted."
    @s.delete
    @y.delete_all
  end

  erb :"/success/delete_event"
end

MyApp.get "/add_result" do
  r = Result.new
  e = Event.find_by_id(params[:event_id])
  if e.event_locked == true
    @message = "This event is currently locked."
  else
    @message = "Result successfully added."
    r.swimmer_id = params[:swimmer_id]
    r.event_id = params[:event_id]
    r.swimmer_time = params["input_time"]
    r.save
  end
  erb :"/success/success_result"
end

MyApp.get "/current_standings" do
  c = Standing.new
  c.event_id = params[:event]
  c.first_id = params[:result_1]
  c.second_id = params[:result_2]
  c.third_id = params[:result_3] 
  #Note: :result I think might need to change this since this controller may need some Ruby to figure out the 3 fastest times per event. 
  c.save

  erb :"/success/show_standings"
end





