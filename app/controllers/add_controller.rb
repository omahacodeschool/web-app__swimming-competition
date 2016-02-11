


MyApp.get "/conference/create" do
  @conference = Conference.new
  @conference.conference_name = params["conference_name"]
  @conference.save
  erb :"admin/confirm_submission"
end

MyApp.get "/college/create" do
  @college = College.new
  @college.college_name = params["college_name"]
  @college.conference_id = params["conference_id"]
  @college.save
  binding.pry
  erb :"admin/confirm_submission"
end






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