MyApp.get "/colleges/add_college" do


  erb :"/colleges/add_college"
end

MyApp.get "/colleges/college/:id" do
  @college = College.find_by_id(params[:id])
  erb :"/colleges/college"
end