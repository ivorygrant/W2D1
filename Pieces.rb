

class Pieces

  attr_reader :pos, :color, :board
  attr_writer :pos
  def initialize(color, pos, board)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
    "P" # placeholder for now
  end

  def empty?
    self.is_a?(NullPiece) ? true : false
  end

end
