require_relative './player'
require_relative './turn'

class Game

  # create players
  # regulate turns asking questions
  # keep track of scores
  # stops game when player loses

  # getting player name
  def get_player_name(player_number)
    puts "What is the name of player #{player_number}?"
    gets.chomp
  end
  # making array with new players name and lives
  def create_players(number_of_players)
    player_lives = 3
    player_names = []
    # Get all the names of each player from the user
    number_of_players.times do |i|
      player_names.push(get_player_name(i + 1))
    end
    # Convert player names to be actual player objects with those names
    @players = player_names.map do |name|
      Player.new(name, player_lives)
    end
  end

  def handle_turns
    i = 0
    while true do
      current_player = @players[i % @players.length]
      turn = Turn.new(current_player)
      turn.ask_question
      # break out of this loop if a player dies
      if current_player.dead?
        break
      else
        i = i + 1
      end
    end
  end

  def show_score
    #check if player has more than 0 lives
    winners = @players.select { |player| !player.dead? }
    puts "You won!"
    #using an each loop incase future implementation of more players
    winners.each do |player|
      puts "#{player.name}'s score: #{player.lives}"
    end
  end

end