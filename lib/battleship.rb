class BattleshipGame
  attr_reader :board, :player
  def initialize(player,board)
    @player = player
    @board = board
  end

  def attack(pos)
    pos = pos.flatten
    puts "_______attack__________"
    @board.grid[pos[0]][pos[1]] = :x
  end

  def count
  end

  def game_over?
  end

  def play_turn
  end
end
