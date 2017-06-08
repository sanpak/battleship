class HumanPlayer
  attr_accessor :user_pos
  def initialize(name)
    @name = name
    @user_pos = user_pos
  end

  def get_play
    puts "What is your move: X,Y:"
    gets.chomp.split(",").map { |el| el.to_i }
  end


end
