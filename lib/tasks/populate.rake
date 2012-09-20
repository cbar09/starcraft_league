namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    #require 'populator'
    #require 'faker'
    
    [Division, Player, Race, Map].each(&:delete_all)
    
    #Create two default divisions
    Division.create( :name => 'Division A')
    Division.create( :name => 'Division B')
    
    #Create the default Races
    Race.create( :name => 'Protoss')
    Race.create( :name => 'Terrann')
    Race.create( :name => 'Zerg')
    
    #Create Three Maps
    Map.create( :name => 'Tolaria')
    Map.create( :name => 'Gaea')
    Map.create( :name => 'Urborg')
    Map.create( :name => 'Phyrexias')
    
    divA = ["FXOLeenock", "Karak", "Goofyballer", "Dysentery", "Well Named"]
    divB = ["Whiskypriest", "Sol Reader", "Rockmaninoff", "Wahoopride", "Gospy"]

    divA.each do |p|
      Player.create( :handle => p, :division_id => Division.where("name = 'Division A'").first.id )
    end
        
    divB.each do |p|
      Player.create( :handle => p, :division_id => Division.where("name = 'Division B'").first.id )
    end
    

    #Create Matches According to Schedule

    #Create Div1 Matches
    #fxo = Player.where("handle ='#{divA[0]}'").first
    #karak = Player.where("handle ='#{divA[1]}'").first
    #goofy = Player.where("handle ='#{divA[2]}'").first
    #dysentery = Player.where("handle ='#{divA[3]}'").first
    #wellNamed = Player.where("handle ='#{divA[4]}'").first
    
    #D1 Matches
    #Week 1 Karak vs. Dysentery
    #Match.create()
    
    
    #Div2 Players
    #whiskey = Player.where("handle ='#{divB[0]}'").first
    #sol = Player.where("handle ='#{divB[1]}'").first
    #rock = Player.where("handle ='#{divB[2]}'").first
    #wahoo = Player.where("handle ='#{divB[3]}'").first
    #gospy = Player.where("handle ='#{divB[4]}'").first
  end
end