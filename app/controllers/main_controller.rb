MyApp.get "/" do
  erb :"homepage"
end

MyApp.get "/winners" do
  erb :"winners_by_year"
end

MyApp.get "/2015" do
  @a = Result.where("competition_id = '1'")
  binding.pry
  erb :"2015_winners"
end

MyApp.get "/2016" do
  erb :"2016_winners"
end


