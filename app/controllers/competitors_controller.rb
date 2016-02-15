MyApp.get "/competitors" do
  @competitors = Competitor.all
  erb :"main/competitors"
end

MyApp.post "/competitor_added" do
  x = Competitor.new
  x.first_name = params[:firstname]
  x.last_name = params[:lastname]
  x.school_name = params[:school]
  x.conference_name = params[:conference]
  x.gender = params[:gender]
  x.save
  erb :"main/competitor_added"
end

MyApp.get "/delete/competitor_deleted/:dogfood" do
  @competitor = Competitor.find_by_id(params[:dogfood])
  @results = Result.find_by_competitor_id(params[:dogfood])
  @results.delete
  @competitor.delete
  erb :"main/delete/competitor_deleted"
end

MyApp.get "/update/competitor_update_form/:popsicle" do
  @competitor = Competitor.find_by_id(params[:popsicle])
  erb :"main/update/competitor_update_form"
end

MyApp.post "/update/competitor_updated/:stopsign" do
  @competitor = Competitor.find_by_id(params[:stopsign])
  @competitor.first_name = params[:firstname]
  @competitor.last_name = params[:lastname]
  @competitor.school_name = params[:school]
  @competitor.conference_name = params[:conference]
  @competitor.gender = params[:gender]
  @competitor.save
  erb :"main/update/competitor_updated"
end