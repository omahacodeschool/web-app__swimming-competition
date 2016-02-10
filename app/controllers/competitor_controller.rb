MyApp.get "/competitors" do
	@list_competitors = Competitor.all
  erb :"competitors/list_competitors"
end

MyApp.get "/competitor/add_new" do
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