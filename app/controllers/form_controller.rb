MyApp.get "/submit_contestant" do
  @obj = Region.new
  @obj.city = params[:city_name]
  @obj.save
  @regions = Region.all
  erb :"successful/contestant_was_added"
end

MyApp.get "/submit_city" do
  @obj = Region.new
  @obj.city = params[:city_name]
  @obj.save
  @regions = Region.all
  erb :"successful/city_was_added"
end