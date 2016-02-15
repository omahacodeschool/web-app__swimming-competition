# view that shows the form for adding a 'competitor'.
MyApp.get "/create_competitor" do
  @schools = School.all
  erb :"competitor/create_competitor"
end

# view that shows the user they have successfully created a competitor. 
MyApp.get "/create_competitor/success" do
  x = Competitor.new
  # x.competitor_name is a new Active Recored method that sets a Competitor Object attribute name to 'competitor_name'.
  x.competitor_name = params["competitor_entered"]
  x.school_id = params["school"]
  # x.save is a new Active Record method that saves that Competitor Object to the 'competitors' table.
  x.save
  # binding.pry # what is 'x'?
  erb :"competitor/create_competitor_success"
end


MyApp.get "/competitors" do
  # .all must be run on the class Competitor itself
  # @competitors can be used in the view.
  @competitors = Competitor.all
  # binding.pry # what is '@competitors'?
  erb :"competitor/all_competitors"
end

MyApp.get "/view_competitor/:number" do
  @competitor = Competitor.find_by_id(params[:number])
  erb :"competitor/view_competitor"
end

MyApp.get "/delete_competitor/:number" do
  @competitor = Competitor.find_by_id(params[:number])
  @competitor.delete
  erb :"competitor/competitor_deleted"
end 

MyApp.get "/edit_competitor_form/:movie" do
  @competitor = Competitor.find_by_id(params[:movie])
  erb :"competitor/edit_competitor"
end









