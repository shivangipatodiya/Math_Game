require './player'
require './question'

class Game
  attr_accessor :player1, :player2, :current_player
  def initialize()
    self.player1 = Player.new("P1")
    self.player2 = Player.new("P2")
    self.current_player = player1
  end

  
end