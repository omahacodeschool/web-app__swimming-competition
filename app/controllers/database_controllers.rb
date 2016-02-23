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
  @r = Result.where({"swimmer_id" => params[:id_of_swimmer]})
  @s.delete
  @r.delete_all
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

MyApp.post "/add_result" do
  e = Event.find_by_id(params[:event_id])
  swimmer_arr = params.fetch("swimmer_id")
  swimmer_arr.each do |id|
    r = Result.new
    if Result.duplicate_swimmer(params[:event_id], id) == false

      if e.event_locked == true
        @message = "This event is currently locked."
      else
        @message = "Result successfully added."
        r.swimmer_id = id
        r.event_id = params[:event_id]
        r.save
      end
    else
      @message = "There is a duplicate swimmer"
    end
  end
  if @message == "Result successfully added."
    @registered_swimmers = Result.where({"swimmer_time" => nil})
    erb :"/create/add_times"
  else
    erb :"/display/error"
  end
end
# Remove a result from results table
MyApp.get "/delete_result/:id_of_result" do
  y = Result.find_by_id(params[:id_of_result])
  #binding.pry
  if y.event_locked? == true
    @message = "This event is currently locked. Swimmers and results cannot be removed at this time."
  else
    @message = "Swimmer successfully removed from this event."
    y.delete
  end
  erb :"/success/delete_result"
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





