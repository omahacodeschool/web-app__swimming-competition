MyApp.get "/update_city_form/:num" do
  @city = Region.find_by_id(params[:num])
  erb :"update_entry/update_city_form"
end

MyApp.get "/submit_city_update/:num" do
  @upd = Region.find_by_id(params[:num])
  @upd.city = params[:city_name]
  @upd.save
  erb :"successful/city_was_updated"
end