MyApp.get "/" do
  erb :"homepage"
end

MyApp.get "/winners" do
  erb :"winners_by_year"
end

MyApp.get "/2015" do
  @competition_table = Competition.all
  erb :"2015_winners"
end

MyApp.get "/2016" do
  erb :"2016_winners"
end

MyApp.get "/competition_winners/:competition_id" do
  @comp_obj = Competition.find_by_id(params[:competition_id])

  @all_scores = Result.where(competition_id: @comp_obj.id)
  @os = @all_scores.order(:"overall")
  @unscored = @os.find_by_overall(nil)
  @os = @os.limit(3).reverse
  erb :"competition_winners"
end


