require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end
    
    post '/teams' do
     @team = Team.new(params[:team])
     
     params[:team][:heroes].each do |args|
       Hero.new(args)
    end
    
    @heroes = Hero.all 
    
    erb :team
    
  end

end
