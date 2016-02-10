
# Example of the StringSegmenter that is ALREADY included in this application:

# x = StringSegmenter.new("pubcat")
# x.run_program
# x.final_words # Returns an Array of the segmented words.

# So now you have the Ruby program needed to complete this assignment.

# Your controller actions go below this line.
# -----------------------------------------------------------------------------

MyApp.get "/" do
  erb :"main"
end

MyApp.get "/college_info" do
  erb :"college_info"
end

MyApp.get "/conference_info" do
  erb :"conference_info"
end

MyApp.get "/event_info" do
  erb :"event_info"
end

MyApp.get "/results" do
  erb :"results"
end

MyApp.get "/winners" do
  erb :"winners"
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