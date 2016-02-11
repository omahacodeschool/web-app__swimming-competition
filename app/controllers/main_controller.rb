
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
  erb :"add_contestant"
end

MyApp.get "/chili" do
  erb :"add_chili"
end

MyApp.get "/competition" do
  erb :"add_competition"
end

MyApp.get "/winners" do
  erb :"winners_by_year"
end

MyApp.get "/2015" do
  erb :"2015_winners.erb"
end

MyApp.get "/2016" do
  erb :"2016_winners.erb"
end








# MyApp.get "/admin" do
#   @searches = Search.all
#   erb :"main/admin"
# end


# MyApp.get "/segmented_text" do
#   x = StringSegmenter.new(params[:smooshed_text])
#   x.run_program
#   segmented_arr = x.final_words
#   segmented_words_now_string = segmented_arr.join(", ")

#   @s = Search.new
#   @s.smooshed_words = params[:smooshed_text]
#   @s.seperated_words = segmented_words_now_string
#   @s.save
#   erb :"main/segmented_text"
# end