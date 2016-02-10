
MyApp.get "/" do

  erb :"home"
end
MyApp.get "/swimmers" do
  @swimmers = Swimmer.all
end
MyApp.get "events" do
  @events = Event.all
end
MyApp.get "/schools" do
  @schools = School.all
end

MyApp.get "/page2" do
  x = StringSegmenter.new(params["a"])
  x.run_program
  ray = x.final_words
  
  @result = ray.join(", ")
  
  @y = Apple.new
  @y.nospace = params["a"]
  @y.words = @result
  
  @y.save

  erb :"page2"
end
MyApp.get "/all_words" do
  @apples = Apple.all
  erb :"allwords"
end