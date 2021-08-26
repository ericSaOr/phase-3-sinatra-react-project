class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/bakers" do
    #get a baker from the database
   bakers = Baker.all
   #return the array as a json response
   bakers.to_json
  end

  get "/donuts" do
    #get donuts from database
    baker = Baker.find(1)
    #return the array of donuts
    donuts = baker.donuts
    donuts.to_json
  end

  post "/donuts" do
    donut = Donut.new
    donut.date_baked = params["number"]
    donut.donut_flavor = params["flavor"]
    donut.baker_id = 1
    donut.save
    donut.to_json
  
  end

  delete "/donuts/:id" do
    donuts = Donut.find(params[:id])
    donuts.destroy
    donuts.to_json
  end
end

