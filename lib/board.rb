class Board
  attr_accessor :grid
  def self.default_grid
    @grid = Array.new(10) { Array.new(10) }
  end

  def initialize(grid=nil)
    @grid = grid
    @grid = Board.default_grid unless grid
  end

  def [](pos_array)
    @grid[pos_array[0]][pos_array[1]]
  end

  def []=(pos_array,mark)
    @grid[pos_array[0]][pos_array[1]] = mark
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
    # debugger
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
    raise "error" if full?
    #do something
    pos = [rand(grid.length), rand(grid.length)]
    unless empty?(pos)
      pos = [rand(grid.length),rand(grid.length)]
    end
      grid[pos[0]][pos[1]] = :s
  end

  def won?
    @grid.each do |row|
      row.each do |cell|
        return false if cell == :s
      end
    end
    return true
  end



end
