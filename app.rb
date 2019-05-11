require './environment'
require_relative "app/models/hero.rb"
require_relative "app/models/team.rb"

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :new 
    end 
    
    post '/teams' do
      @team = Team.new(params[:team])
      
      params[:team][:heroes].each do |details|
        Hero.new(details)
      end
      @hero = Hero.all
      erb :show
    end 
  end 