
MyApp.get "/competitors" do
  @competitors = Competitor.all
  erb :"/competitors/competitors"
end

MyApp.post "/competitors/add_competitor" do
  @colleges = College.all
  erb :"/competitors/add_competitor"
end

MyApp.get "/competitors/competitor/:id" do
  @competitor = Competitor.find_by_id(params[:id])
  @colleges = College.all
  @results = Result.where({"competitor_id" => params[:id]})
  erb :"/competitors/competitor"
end


MyApp.get "/competitors/competitor/:id/update_competitor" do
  @competitor = Competitor.find_by_id(params[:id])
  @colleges = College.all
  @results = Result.where({"competitor_id" => params[:id]})
  erb :"/competitors/update_competitor"
end

MyApp.get "/competitors/competitor/:id/delete_score" do
  @competitor = Competitor.find_by_id(params[:id])
  @results = Result.where({"competitor_id" => params[:id]})
  @colleges = College.all
  erb :"/competitors/delete_competitor_score"
end

MyApp.post "/competitors/competitor/:id/delete_score/confirmation" do
  @competitor = Competitor.find_by_id(params[:id])
  @results = Result.find_by_id(params["delete_competitor_result_dropdown"])
  @results.delete
  redirect :"/competitors/competitor/#{@competitor.id}"
end

MyApp.post "/competitors/competitor/:id/update_competitor/confirmation" do
  @c = Competitor.find_by_id(params[:id])
  @c.name = params["update_competitor_name_textbox"]
  @c.college_id = params["update_competitor_college_dropdown"]
  @c.age = params["update_competitor_age_dropdown"]
  @c.age = @c.age.to_i
  @c.save
  @results = Result.where({"competitor_id" => params[:id]})
  redirect :"/competitors/competitor/#{@c.id}"
end

MyApp.post "/competitors/added_new_competitor" do
  @c = Competitor.new
  @c.name = params["add_competitor_name_textbox"]
  age = params["competitor_age_dropdown"]
  @c.age = age.to_i
  college = params["competitor_college_dropdown"]
  @c.college_id = college
  @c.save
  redirect :"/competitors/competitor/#{@c.id}"
end

MyApp.post "/competitors/competitor/:id/delete_competitor/confirmation" do
  @competitor = Competitor.find_by_id(params[:id])
  @competitor.delete_all_competitor_results
  @competitor.delete
  redirect :"/competitors"
end

MyApp.get "/competitors/competitor/:id/add_score" do
  @competitor = Competitor.find_by_id(params[:id])
  @colleges = College.all
  @activities = Activity.all
  @r = Result.all
  erb :"/competitors/add_competitor_activity_score"
end

MyApp.get "/competitors/competitor/:id/delete_score" do
  @competitor = Competitor.find_by_id(params[:id])
  @results = Result.find_by_id(params["update_competitor_result_dropdown"])
  erb :"/competitors/delete_competitor_score"
end

MyApp.post "/competitors/competitor/:id/add_score/confirmation" do
  @c = Competitor.find_by_id(params[:id])
  @activities = Activity.all
  @r = Result.new
  @r.competitor_id = @c.id
  @r.activity_id = params["add_competitor_activity_dropdown"]
  @r.score = params["add_competitor_activity_score_textbox"]
  @r.save
  redirect :"/competitors/competitor/#{@c.id}"
end

MyApp.get "/competitors/competitor/:id/update_competitor/score" do
  @competitor = Competitor.find_by_id(params[:id])
  @colleges = College.all
  @activities = Activity.all
  @results = Result.where({"competitor_id" => params[:id]})
  erb :"/competitors/update_competitor_score"
end

MyApp.post "/competitors/competitor/:id/update_competitor/score/confirmation" do
  @competitor = Competitor.find_by_id(params[:id])
  @results = Result.find_by_id(params["update_competitor_result_dropdown"])
  @results.score = params["update_competitor_activity_score_textbox"]
  @results.save
  redirect :"/competitors/competitor/#{@competitor.id}"
end


