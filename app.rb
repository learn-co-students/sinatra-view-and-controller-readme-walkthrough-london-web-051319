require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    @user = "Ian"

    erb :index
  end

  get "/profile" do
    erb :profile # @user will be nil here
  end

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    org_string = params["string"]
    @rev_string = org_string.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end
