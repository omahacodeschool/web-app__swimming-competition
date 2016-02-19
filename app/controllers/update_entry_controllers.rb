MyApp.get "/update_city" do
  
  erb :"update_entry/update_city"
end

MyApp.get "/submit_city_update/:num" do
  city = Region.find_by_id(params[:num])
  erb :"successful/city_was_updated"
end