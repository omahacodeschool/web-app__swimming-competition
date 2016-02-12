# Go to a view that displays a swimmers name, thier university, and the 
#events they are in
MyApp.get "/swimmer_bio/:id" do
  @swimmer = Swimmer.find_by_id(params[:id])
  @result = Result.where({@swimmer.swimmer_id => params[:id]})
  binding.pry
  erb :"/bios/swimmer_bio"
end





