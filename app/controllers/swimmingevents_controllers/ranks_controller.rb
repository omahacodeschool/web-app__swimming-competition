#ranks controller goes here 
require 'pry'

MyApp.get "/superadmin/rank" do
  @ranks = Rank.all
  erb :"ev/ranks"
end

MyApp.post "/newranks" do
  r = Rank.new
  r.rank_name = params[:rankname]
  r.save
  @ranks = Rank.all
  erb :"/ev/ranks"
end

##who won in what order
#DB.define_table("ranks")
#DB.define_column("ranks","rank_name","string")