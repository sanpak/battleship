class Board
  attr_accessor :grid
  def self.default_grid
    @grid = Array.new(10) { Array.new(10) }
  end

  def initialize(grid=nil)
    @grid = grid
    @grid = Board.default_grid unless grid
  end

  def count
    # puts " ________count__________"
    ship_count = 0
    @grid.each do |row|
      row.each do |cell|
        ship_count += 1 if cell == :s
      end
    end
    ship_count
  end

  def empty?(pos)
    # puts "______position________"
    @grid[pos[0]][pos[1]] == nil
  end

  def full?
    # puts "___________full?___________"
    @grid.each do |row|
      row.each do |cell|
        return false if cell == nil
      end
    end
    return true
  end


end
