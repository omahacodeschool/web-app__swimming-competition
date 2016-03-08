MyApp.get "/result" do
  
  x = Sequence.new
  x.run_sequencer(params[:user_loops])

  @awesomes = Awesome.where("search_id" => x.search_id)

  erb :"result"
end  

MyApp.get "/admin" do

@searches = Search.all

erb :"admin"
end

# Show form.
MyApp.get "/" do
 
  erb :"homepage"
end