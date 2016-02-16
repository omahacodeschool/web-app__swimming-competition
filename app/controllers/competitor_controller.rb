MyApp.post "/competitors/add_competitor" do
  @colleges = College.all
  erb :"/competitors/add_competitor"
end

MyApp.get "/competitors/competitor/:id" do
  @competitor = Competitor.find_by_id(params[:id])
  @colleges = College.all
  erb :"/competitors/competitor"
end

MyApp.get "/competitors/competitor/:id/update_competitor" do
  @competitor = Competitor.find_by_id(params[:id])
  @colleges = College.all
  erb :"/competitors/update_competitor"
end

MyApp.post "/competitors/competitor/:id/update_competitor/confirmation" do
  @c = Competitor.find_by_id(params[:id])
  @c.name = params["update_competitor_name_textbox"]
  @c.college_id = params["update_competitor_college_dropdown"]
  @c.age = params["update_competitor_age_dropdown"]
  @c.age = @c.age.to_i
  @c.save
  erb :"/competitors/update_competitor_confirmation"
end

MyApp.post "/competitors/added_new_competitor" do
  c = Competitor.new
  c.name = params["add_competitor_name_textbox"]
  age = params["competitor_age_dropdown"]
  c.age = age.to_i
  college = params["competitor_college_dropdown"]
  c.college_id = college
  c.save
  erb :"/competitors/added_competitors_confirmation"
end

MyApp.get "/competitors/competitor/deleted" do
  @competitor = Competitor.find_by_id(params[:id])
  erb :"/competitors/deleted_competitor_confirmation"
end


