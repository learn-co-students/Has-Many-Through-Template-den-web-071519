class Quest
    @@all = []
    attr_reader :name, :location, :player, :boss, :description
    def initialize(player)
        @name = ["Evil Castle", "Water Wars", "Desert Race", "City Streets"].sample
        @location = ["Sandy Shores", "City Park", "Utah", "Epic Jungle", "Spooky Forest"].sample
        @player = player
        @boss = BossFight.all.sample
        @description = "Win the epic battle!"
        @@all << self
    end


    def self.all
        @@all
    end
  
end
