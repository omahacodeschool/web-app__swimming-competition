MyApp.get "/" do
  erb :"homepage"
end

MyApp.get "/winners" do
  erb :"winners_by_year"
end

MyApp.get "/2015" do
  @all_scores = Result.where("competition_id = '1'")
  @os = @all_scores.order(:"overall")
  @os = @os.limit(3).reverse
  erb :"2015_winners"
end

MyApp.get "/2016" do
  erb :"2016_winners"
end


