require_relative 'Pieces.rb'
require_relative 'NullPiece.rb'

class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(8) {Array.new(8)}
    @null_piece = NullPiece.instance
  end

  def populate_board
    #populates rows indexes 0 and 1 with pieces as well as 6 and 7 with pieces
    # null pieces will be populated between 2 and 5
    @grid.each_with_index do |rows,idx|
      rows.each_index do |idx2|
        if idx <= 1
          self[[idx,idx2]] = Pieces.new(:white, [idx,idx2])
        elsif idx >= 6
          self[[idx,idx2]] = Pieces.new(:black, [idx,idx2])
        else
          self[[idx,idx2]] = @null_piece
        end
      end
    end
    @grid
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  #[[1, 2]] = value

  def []=(pos, value)
    row, col = pos
    grid[row][col] = value
  end

  def move_piece(start_pos, end_pos)
    self[end_pos] = self[start_pos]
    self[end_pos].pos = end_pos
    self[start_pos] = @null_piece
  end

  def valid_pos?(pos)
  end

  def add_piece(piece, pos)

  end

  def checkmate?(color)

  end

  def find_king(color)

  end

  def pieces

  end

  def dup

  end

end
