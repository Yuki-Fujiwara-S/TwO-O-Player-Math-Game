class GameSetup
  def initialize()
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start
    puts "New Game Started. Welcome Player 1 and Player 2"
    each_turn
  end

  def show_score
    puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.score}/3"
    puts '---------GAME-OVER--------'
    puts 'Good Luck!'
    exit(0)
  end

  def check_score
    if @player1.is_dead?
      winner(@player2)
    elsif @player2.is_dead?
      winner(@player1)
    end
  end

  def each_turn
    @player1.new_question
    check_score
    @player2.new_question
    check_score
    show_score
    puts '---------NEW-TURN---------'
    each_turn  
  end

end