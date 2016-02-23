MyApp.post "/swimmers_form" do
  @swimmers = Swimmer.all
  @swimmer  = Swimmer.new

  @swimmer.swimmer_name           = (params["swimmer_name"])
  @swimmer.swimmer_dob            = (params["swimmer_dob"])
  @swimmer.swimmer_gender         = (params["swimmer_gender"])
  @swimmer.team_id                = (params["swimmer_team"].to_i)
  @swimmer.swimmer_payment_status = (params["swimmer_payment_status"])

  if @swimmer.is_valid
    @swimmer.save
  
    erb :"main/add_swimmers"
  else
    erb :"main/error"
  end
end

MyApp.get "/delete_swimmer/:swimmer_id" do
  @swimmers = Swimmer.all
  @swimmer  = Swimmer.find_by_id(params[:swimmer_id])
  
  @swimmer.delete
    
  erb :"main/add_swimmers"
end

MyApp.get "/update_swimmer/:swimmer_id" do
  @swimmers = Swimmer.all
  @swimmer  = Swimmer.find_by_id(params[:swimmer_id])

  erb :"main/update_swimmer"
end

MyApp.post "/process_swimmer_update/:swimmer_id" do
  @swimmers = Swimmer.all
  @swimmer  = Swimmer.find_by_id(params[:swimmer_id])

  @swimmer.swimmer_name           = (params["swimmer_name_update"])
  @swimmer.swimmer_dob            = (params["swimmer_dob_update"])
  @swimmer.swimmer_gender         = (params["swimmer_gender_update"])
  @swimmer.team_id                = (params["swimmer_team_update"].to_i)
  @swimmer.swimmer_payment_status = (params["swimmer_payment_status_update"])

  if @swimmer.is_valid
    @swimmer.save
  
    erb :"main/add_swimmers"
  else
    erb :"main/error"
  end
end