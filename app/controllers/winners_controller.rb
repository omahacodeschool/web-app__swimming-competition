MyApp.get "/winners" do
  erb :"winners/winners_by_year"
end

MyApp.get "/2015" do
  @competition_table = Competition.all
  erb :"winners/2015_winners"
end

MyApp.get "/2016" do
  erb :"winners/2016_winners"
end

MyApp.get "/competition_winners/:competition_id" do
  @comp_obj = Competition.find_by_id(params[:competition_id])

  @all_scores = Result.where(competition_id: @comp_obj.id)
  @os = @all_scores.order(:"overall")
  @unscored = @os.find_by_overall(nil)
  @os = @os.limit(3).reverse
  erb :"winners/2015_winners_by_competition"
end