








# MyApp.get "/main/show_words" do
#   words = StringSegmenter.new(params[:entered_string])
#   words.run_program
#   segmented_arr = words.final_words # Returns an Array of the segmented words.
#   segmented_words_as_string = segmented_arr.join(", ")

#   # Use the ActiveRecord 'Search' class to access the database

#   @s = Search.new
#   @s.search_string = params[:entered_string]
#   @s.segmented_parts = segmented_words_as_string
#   @s.save
#   erb :"main/show_words"
# end