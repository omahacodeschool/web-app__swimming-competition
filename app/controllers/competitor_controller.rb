MyApp.get "/competitors" do
	@list_competitors = Competitor.all
	@list_schools = School.all
  erb :"competitors/list_competitors"
end

MyApp.get "/competitors/add_new" do
	@list_schools = School.all
  erb :"competitors/add_competitor"
end

MyApp.post "/add_competitor" do
	@competitor = Competitor.new
	@competitor.first_name = params[:first_name]
	@competitor.last_name = params[:last_name]
	@competitor.school_id = params[:school_id]
	if @competitor.is_valid == true
		@competitor.save
		redirect :"profile/#{@competitor.id}"
	else
		@error_object = @competitor
		erb :"error"
	end
end

MyApp.get "/profile/:competitor_id" do
  	@competitor = Competitor.find(params[:competitor_id])
  	@school =School.find_by_id(@competitor.school_id)
  	@events = Event.all
  erb :"competitors/profile"
end

MyApp.post "/profile/enter_events/:competitor_id" do
	@competitor = Competitor.find(params[:competitor_id])
	@competitor.set_events(params["set_competitor_events"])
  redirect :"profile/#{@competitor.id}"
end

MyApp.get "/competitors/edit/:competitor_id" do
  	@competitor = Competitor.find(params[:competitor_id])
  	@list_schools = School.all
  erb :"competitors/edit_competitor"
end

MyApp.post "/edit/:competitor_id" do
	@competitor = Competitor.find(params[:competitor_id])
	@competitor.update_attributes({first_name: params['first_name'], last_name: params['last_name'], school_id: params['school_id']})
	@competitor.save
  redirect :"profile/#{@competitor.id}"
end

MyApp.post "/competitor_delete/:competitor_id" do
	@competitor = Competitor.find(params[:competitor_id])
	@competitor.delete_competitor_info
	@competitor.delete
  redirect :"competitors"
end
