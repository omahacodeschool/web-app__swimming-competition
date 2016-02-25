MyApp.get "/submit_chili" do
  @f = Chili.new
  @f.name = params[:name_of_chili]
  @f.contestant_id = params[:contestant_id]
  @f.save
  erb :"successful/chili_was_added"
end

MyApp.get "/submit_region" do
  @obj = Region.new
  @obj.city = params[:city_name]
  @obj.save
  erb :"successful/city_was_added"
end

MyApp.get "/submit_competition" do
  @cat = Competition.new
  @cat.name = params[:category]
  @cat.save
  erb :"successful/competition_was_added"
end

MyApp.get "/submit_contestant" do
  @c = Contestant.new
  @c.first_name = params[:contestant_first_name]
  @c.last_name = params[:contestant_last_name]
  @c.region_id = params[:city_id]
  @c.save
  erb :"successful/contestant_was_added"
end

MyApp.get "/submit_scores" do
  @score = Result.find_by_id(params[:result_id])
  @score.aroma = params[:aroma]
  @score.flavor = params[:flavor]
  @score.texture = params[:texture]
  @score.heat = params[:heat]
  @score.appearance = params[:appearance]
  @score.overall = @score.aroma + @score.flavor + @score.texture + @score.heat + @score.appearance
  @score.save
  erb :"successful/scores_was_added"
end

MyApp.get "/submit_contestant_to_competition" do
  
  @chili_id = params[:chili_id]
  @competition_array = params[:competition]
  @position = 0
  @count = 0

  while @count <= @competition_array.count
    x = Result.new
    x.chili_id = @chili_id
    x.save
    @count += 1
  end



  @objects = Result.where({chili_id: @chili_id, competition_id: nil})
  @objects.each do |x|
    x.competition_id = @competition_array[@position]
    x.save
    @competition_array[@position += 1]
  end


  erb :"successful/contestant_was_added_to_competition"
end




