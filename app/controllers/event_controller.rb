MyApp.get "/winners/:place" do
  @event = Event.find_by_id(params[:place])
  @signup = Signup.where({"event_id" => (params[:place])})
  if @event.lock == true
    return nil
  else
  end
  erb :"winners"
end
MyApp.get "/lock_event/:place" do
  @event = Event.find_by_id(params[:place])
  if @event.lock == false
     @event.lock = true
     @event.save
  else
    @event.lock = false
    @event.save
  end
  erb :"follower"
end
MyApp.get "/add_event" do
    @event = Event.all
    @event_add = Event.new
    @event_add.event_name = params[:new_event]
    @event_add.first_place_swimmer = params[:first]
    @event_add.second_place_swimmer = params[:second]
    @event_add.third_place_swimmer = params[:third]
    @event_add.save
    @schools = School.new
    @swimmers = Swimmer.new
    @conferences = Conference.new
  erb :"follower"
end
MyApp.get "/view_event/:place" do
  @event = Event.find_by_id(params[:place])
  @signup = Signup.where({"event_id" => (params[:place])})

  erb :"event_list"
end
MyApp.get "/delete_event/:place" do
  @event = Event.find_by_id(params[:place])
  if @event.lock == false
    @event.delete
  else
    return nil
  end
  @schools = School.all
  erb :"follower"
end
MyApp.get "/edit_event/:place" do
  @event = Event.find_by_id(params[:place])
  
  erb :"edit_event"
end
MyApp.get "/edit_event/finish_update_event/:place" do
  @event = Event.find_by_id(params[:place])
  if @event.lock == false
    @event.event_name = params[:edit_name]
    @event.save
  else
    return nil
  end
  erb :"follower"
end


