
# Example of the StringSegmenter that is ALREADY included in this application:

# x = StringSegmenter.new("pubcat")
# x.run_program
# x.final_words # Returns an Array of the segmented words.

# So now you have the Ruby program needed to complete this assignment.

# Your controller actions go below this line.
# -----------------------------------------------------------------------------

MyApp.get "/" do
  erb :"homepage"
end

MyApp.get "/region" do
  erb :"add_city"
end

MyApp.get "/contestant" do
  @regions = Region.all
  erb :"add_contestant"
end

MyApp.get "/chili" do
  erb :"add_chili"
end

MyApp.get "/competition" do
  erb :"add_competition"
end

MyApp.get "/scores" do
  erb :"add_scores"
end

MyApp.get "/winners" do
  erb :"winners_by_year"
end

MyApp.get "/2015" do
  erb :"2015_winners"
end

MyApp.get "/2016" do
  erb :"2016_winners"
end

MyApp.get "/city_added_successful" do
  @obj = Region.new
  @obj.city = params[:city_name]
  @obj.save
  @regions = Region.all
  erb :"city_added"
end
