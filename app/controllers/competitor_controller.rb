MyApp.get "/competitors/add_competitor" do

  erb :"/competitors/add_competitor"
end

MyApp.get "/competitors/added_new_competitor" do
  c = Competitor.new
  c.name = params["add_competitor_name_textbox"]
  c.save
  erb :"/competitors/added_competitors_confirmation"
end

MyApp.get "/competitors/competitor/:id" do
  @competitor = Competitor.find_by_id(params[:id])
  @competitor_info = Competitor.all
  erb :"/competitors/competitor"
end

