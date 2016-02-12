MyApp.get "/competitors/add_competitor" do
  @colleges = College.all
  erb :"/competitors/add_competitor"
end

MyApp.get "/competitors/added_new_competitor" do
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

MyApp.post "/competitors/competitor/updated_competitor_age/:id" do
  @c = Competitor.find_by_id(params[:id])
  @c.age = params["update_competitor_age_dropdown"]
  @c.age = @c.age.to_i
  @c.save
  erb :"/competitors/update_competitor_confirmation"
end

MyApp.post "/competitors/competitor/delete_competitor_age/:id" do
  @c = Competitor.find_by_id(params[:id])
  @c.age = nil
  @c.save
  erb :"/competitors/deleted_competitor_confirmation"
end



MyApp.get "/competitors/competitor/:id" do
  @competitor = Competitor.find_by_id(params[:id])
  @competitor_info = Competitor.all
  erb :"/competitors/competitor"
end

