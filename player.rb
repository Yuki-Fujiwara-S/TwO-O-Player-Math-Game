class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def make_mistake
    @score -= 1
  end

  def is_dead?
    @score == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print '> '
    userchoice = $stdin.gets.chomp
    if new_question.correct?(userchoice.to_i)
      puts 'Correct!'
    else
      puts 'False. Take Math101 my friend.'
      make_mistake
    end
  end


end