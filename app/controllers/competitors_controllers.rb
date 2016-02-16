MyApp.post "/competitors" do
  x = Competitor.new
  x.first_name = params["fname"]
  x.last_name = params["lname"]
  x.school_id = params["school"]
  x.save
  @y = [x.first_name, x.last_name, x.school_id]
  erb :"competitors/competitors"
end

MyApp.get "/all_competitors" do 
  @competitors = Competitor.all
  erb :"competitors/competitors_list"
end 

MyApp.get "/view_competitor/:competitor_id" do 
  @competitor = Competitor.find_by_id(params[:competitor_id])
  erb :"competitors/single_competitor"
end

MyApp.post "/delete_competitor/:competitor_id" do
  @competitor = Competitor.find_by_id(params[:competitor_id])
  @competitor.delete
  @result = Result.where("competitor_id" => params[:competitor_id])
  @result.each do |r|
    r.delete
  end
  erb :"competitors/deleted"
end

MyApp.get "/edit_competitor/:competitor_id" do
  @competitor = Competitor.find_by_id(params[:competitor_id])
  erb :"competitors/form_for_editing_competitor"
end

MyApp.post "/process_competitor_edit_form/:competitor_id" do
  x = Competitor.find_by_id(params[:competitor_id])
  x.first_name = params["first_name"]
  x.last_name = params["last_name"]
  x.school_id = params["school_id"]
  x.save
  @y = [x.first_name, x.last_name, x.school_id]
  erb :"competitors/processed"
 end 