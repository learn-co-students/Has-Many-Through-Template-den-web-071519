require 'pry'
require_relative "lib/BossFight.rb"
require_relative "lib/Player.rb"
require_relative "lib/Quest.rb"

ganon = BossFight.new("Ganon", 9999, 1000, ["Blue Fire Ball", "Epic Smash", "L A Z O R", "Big Sword \"WOOOOOOSH!!\""] )
midna = BossFight.new("Midna", 500, 130, ["Tackle", "Hypnotize"])
cia = BossFight.new("Cia", 300, 70, ["Love Potion", "Scary Look", "Arrow Storm"])

link = Player.new("Link", 0, 100, ["Master Sword"], [])
zelda = Player.new("Zelda", 0, 100, ["Fists", "Spin Move"], ["Fire Blast", "Healing"])

quest1 = Quest.new(zelda)
quest2 = Quest.new(link)







binding.pry