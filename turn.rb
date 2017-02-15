require_relative './question'

class Turn
  #creating a new instance of Turn
  def initialize(player)
    @player = player
  end
  #new method to prompt a new instance of question
  def ask_question
    question = Question.new
    puts "#{@player.name}, #{question.present_question}"
    answer = gets.chomp.to_i
    correct_response = question.check_answer(answer)
    if correct_response
      puts "You got it!"
    else
      puts "WRONG! You lose a life now"
      @player.lives = @player.lives - 1
    end
  end

end