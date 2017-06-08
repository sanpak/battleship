class HumanPlayer
  attr_accessor :user_pos
  def initialize(name)
    @name = name
    @user_pos = user_pos
  end

  def get_move
    puts "What is your move: X,Y:"
    return gets.chomp
  end


end
