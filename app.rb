require './environment'
require_relative "app/models/hero.rb"
require_relative "app/models/team.rb"

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :new 
    end 
    
    post '/teams'do
    end
    
  end 