# Go to a view that displays a swimmers name, thier university, and the 
#events they are in
MyApp.get "/swimmer_bio/:id" do
  @swimmer = Swimmer.find_by_id(params[:id])
  @result = Result.where({"swimmer_id" => params[:id]})
  #binding.pry
  erb :"/bios/swimmer_bio"
end

# When an event is clicked, go to a view that shows all the swimmers who competed in that event. 
MyApp.get "/event_bio/:id" do
  @event = Event.find_by_id(params[:id])
  @university = Result.where({"event_id" => params[:id]})
  #binding.pry
  erb :"/bios/event_bio"
end

# Go to a view that displays a swimmers name, thier university, and the 
#events they are in
MyApp.get "/event_bio/swimmer_bio/:id" do
  @swimmer = Swimmer.find_by_id(params[:id])
  @result = Result.where({"swimmer_id" => params[:id]})
  binding.pry
  erb :"/bios/swimmer_bio"
end

