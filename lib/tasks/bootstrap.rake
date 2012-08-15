namespace :bootstrap do
      desc "Create default divisions"
      task :populate_divisions => :environment do
        Division.create( :name => 'Division A')
        Division.create( :name => 'Division B')
      end
      
      desc "Create Default Races"
      task :populate_races => :environment do
        Race.create( :name => 'Protoss')
        Race.create( :name => 'Terrann')
        Race.create( :name => 'Zerg')
      end
      
      desc "Create Default Races"
      task :populate_maps => :environment do
        Race.create( :name => 'Map1')
        Race.create( :name => 'Map2')
        Race.create( :name => 'Map3')
      end

      desc "Create the default players"
      task :populate_players => :environment do
        
        divA = ["FXOLeenock", "Karak", "Goofyballer", "Goofyballer", "Well Named"]
        divB = ["Whiskypriest", "Sol Reader", "Rockmaninoff", "Wahoopride", "Gospy"]

        divA.each do |p|
          Player.create( :handle => p, :division_id => Division.where("name LIKE Division A") )
        end
        
        divB.each do |p|
          Player.create( :handle => p, :division_id => Division.where("name LIKE Division B") )
        end
        
      end
      
      desc "Create all matches"
      task :populate_matches => :environment do
        div = (1..5).to_a
        
        (1..5).each |x| do
          p1 = div.delete_at(rand(div.length))
          div.each {|p2| 
            
          end
          
        end
      end

      desc "Run all bootstrapping tasks"
      task :all => [:default_user, :default_comment]
    end