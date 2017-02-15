require 'pry'
require './game'
# require './player'

# class Main
# only calls upon game.rb

game = Game.new
game.create_players(2)
game.handle_turns
game.show_score
