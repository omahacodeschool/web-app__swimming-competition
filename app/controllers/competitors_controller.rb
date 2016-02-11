MyApp.get "/competitors" do
  @competitors = Competitor.all
  erb :"main/competitors"
end

MyApp.get "/competitor_added" do
  x = Competitor.new
  x.first_name = params[:firstname]
  x.last_name = params[:lastname]
  x.school_id = params[:school]
  x.conference_id = params[:conference]
  x.gender = params[:gender]
  x.save
  erb :"main/competitor_added"
end