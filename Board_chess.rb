require 'Pieces.rb'

class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(8) {Array.new(8)}
  end

  def [](pos)

  end

  def []=(pos,val)

  end

  def move_piece(color, start_pos, end_pos)

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

  def move_piece(color, start_pos, end_pos)
  end
end
