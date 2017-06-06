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

  def empty?(pos=nil)
    # puts "______position________"
    if pos != nil
      return true if @grid[pos[0]][pos[1]] == nil
    end
      @grid.each do |row|
        row.each do |cell|
          return false if cell != nil
        end
      end
      return true
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

  def place_random_ship
    raise "board is full, error!" if @grid.full?
    puts "__________-____random ship_______________"
    p @grid.full?
    random_x_pos = rand(10)
    random_y_pos = rand(10)
    @grid[random_x_pos][random_y_pos] = :s
  end

end
