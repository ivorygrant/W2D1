require_relative 'Pieces.rb'
require_relative 'SteppingPiece.rb'

class Knight < Pieces
  include SteppingPiece

  def initialize(color, pos)
    @color = color
    # @board = Board
    @pos = pos
  end

  def moves
    self.knights_moves
  end

end

class King < Pieces
  include SteppingPiece

  def initialize(color, pos)
    @color = color
    # @board = Board
    @pos = pos
  end

  def moves
    self.kings_moves
  end
end
