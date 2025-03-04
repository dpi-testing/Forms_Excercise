require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:form)
end

post("/submit") do
  @name = params[:name]
  @age = params[:age]
  @email = params[:email]
  @learning_mode = params[:learning_mode]
  @subscribe = params[:subscribe] == "on" ? "Yes" : "No"
  erb(:result)
end
