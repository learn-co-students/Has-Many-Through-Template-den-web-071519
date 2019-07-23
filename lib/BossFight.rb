class BossFight
    @@all = []
    attr_reader :name, :abilities
    attr_accessor :level, :hp
    def initialize(name, level, hp, abilities)
        @name = name
        @level = level
        @hp = hp
        @abilities = abilities
        @@all << self
    end



    
    def self.all
        @@all
    end

end
