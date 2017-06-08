require 'byebug'

class BattleshipGame
  attr_reader :board, :player
  def initialize(player=HumanPlayer.new,board)
    @player = player
    @board = board
  end

  def attack(pos)
    pos = pos.flatten
    puts "_______attack__________"
    board.grid[pos[0]][pos[1]] = :x
  end

  def count
    board.count
  end

  def game_over?
    board.won?
  end

  def play_turn
    puts "________play_turn_______________"
    move = player.play_turn
    move = move.split(",").map { |el| el.to_i }
    attack(move)
    # move = player.get_move.split(",").map { |el| el.to_i }
    # p board.grid[move[0]][move[1]] = :x
    # p move = get_play.user_pos.split(",").map { |el| el.to_i }
    # p board.grid[move[0]][move[1]] = :x
    # p board.grid
  end
end
