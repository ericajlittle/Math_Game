class Question

def initialize
  @number1 = rand(10)
  @number2 = rand(10)
  @operator = [:+, :-, :*, :/].sample
end

def check_answer(answer)
  # number1 (operator) number2 == answer
  # correct_answer = case operator
  #   when :+ then number1 + number2
  # end

  correct_answer = number1.send(operator, number2)

  answer == correct_answer
end

def present_question()
  "What is #{@number1} #{@operator} #{@number2}?"
end

end
