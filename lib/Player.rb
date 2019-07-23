class Player
    attr_reader :name
    attr_accessor :level, :hp, :weapons, :spells, :quest
    @@all = []
    def initialize(name, level, hp, weapons, spells)
        @name = name
        @level = level
        @hp = hp
        @weapons = weapons
        @spells = spells
        @quest = nil
        @@all << self
    end

    def start_quest
        @quest = Quest.all.select {|quest| quest.player == self}.sample
        "#{@quest.name} at #{@quest.location} vs #{@quest.boss.name}. #{@quest.description}!!"
    end

    def attack
        puts "You use #{self.weapons.sample}"
        @quest.boss.hp -= (10)
        if @quest.boss.hp <= 0
            @quest = nil
            puts "You win!"
        else
            puts "#{@quest.boss.name} uses #{@quest.boss.abilities.sample}"
            @hp -= (10)
            puts "You have #{self.hp} health!"
        end
        if @hp <= 0
            self.die
        else 
        "What next, hero?"
        end
    end

    def die
        "GAME OVER #{@name}"
    end

    def level_up
        @level += 100
        @hp += 50
    end

    def restart_game
        @hp = 100
        @level = 0
    end

    def self.all
        @@all
    end

end
