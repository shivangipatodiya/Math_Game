require './player'
require './question'

class Game
  attr_accessor :player1, :player2, :current_player
  def initialize()
    self.player1 = Player.new("P1")
    self.player2 = Player.new("P2")
    self.current_player = player1
  end

  def turn_toggle
    
    if current_player.name == player1.name
      self.current_player = player2
    else
      self.current_player = player1
    end
  end
  
  def play_game
    while player1.lives != 0 && player2.lives != 0 do
      question = Question.new
      puts "For #{current_player.name}:  #{question.text}"
      input = gets.chomp.to_i
  
      if input == question.answer
        puts "#{current_player.name}:  You are correct"
        puts ""
        puts "-----SCORES-----"
        puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
      else 
        puts "#{current_player.name}:  You are wrong. You lose a life"
        current_player.deduct_lives
        puts ""
        puts "-----SCORES-----"
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      end
      if player1.lives == 0 || player2.lives == 0
        player1.lives == 0 ? winner = player2 : winner = player1 
        puts "#{winner.name} wins with #{winner.lives}/3 lives"
        puts "-----GAME OVER-----"
      else
          turn_toggle
          puts ""
          puts "-----NEW TURN-----"
      end
      
    end
  
  end
end