MyApp.get "/competitors" do
	@list_competitors = Competitor.all
  erb :"competitors/list_competitors"
end

MyApp.get "/competitors/add_new" do
		@list_schools = School.all
  erb :"competitors/add_competitor"
end

MyApp.get "/add_competitor" do
	x = Competitor.new
	x.first_name = params[:first_name]
	x.last_name = params[:last_name]
	x.school_id = params[:school_id]
	x.save
	erb :"success"
end

MyApp.get "/profile/:competitor_id" do
  @competitor = Competitor.find(params['competitor_id'])
  erb :"profile"
end

MyApp.get "/competitors/edit/:competitor_id" do
  	@competitor = Competitor.find(params['competitor_id'])
	erb :"competitors/edit_competitor"
end

MyApp.get "/edit/:competitor_id" do
	@competitor = Competitor.find(params['competitor_id'])
	x.first_name = params[:first_name]
	x.last_name = params[:last_name]
	x.school_id = params[:school_id]
	x.save
	erb :"success"
end
