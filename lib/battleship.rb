require 'byebug'
require_relative 'board.rb'
require_relative 'player.rb'

class BattleshipGame
  attr_reader :board, :player
  def initialize(player=HumanPlayer.new("John"),board)
    @player = player
    @board = board
  end

  def attack(pos)
    pos = pos.flatten
    puts "_______attack__________"
    board.grid[pos[0]][pos[1]] = :x
    #if I do this, I can't pass the spec
    # board.player_grid[pos[0]][pos[1]] = :x
  end

  def count
    board.count
  end

  def game_over?
    board.won?
  end

  def play_turn
    puts "________play_turn_______________"
    move = player.get_play
    attack(move)
    # move = player.get_move.split(",").map { |el| el.to_i }
    # p board.grid[move[0]][move[1]] = :x
    # p move = get_play.user_pos.split(",").map { |el| el.to_i }
    # p board.grid[move[0]][move[1]] = :x
    # p board.grid
  end

  def display_hack
    #shows you the ship
    puts "#{board.grid}"
  end

  def display_player_board
    #shows you player's board so players can't see where the ship is
    puts "#{board.player_grid}"
  end

  def setup
    board.place_random_ship
  end

  def play
    setup
    # display_hack
    # display_player_board
    until game_over?
      play_turn
      # display_player_board
    end
    puts ""
    puts "Hit!"
    puts ""
  end
end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  game = BattleshipGame.new(board)
  game.play
end
