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
    
    
    
  end
end