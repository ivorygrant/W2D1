

class Pieces
  
  attr_reader :pos, :color
  attr_writer :pos
  def initialize(color, pos)
    @color = color
    # @board = Board
    @pos = pos
  end

  def to_s
    "P" # placeholder for now
  end

  def empty?
    self.is_a?(NullPiece) ? true : false
  end

end

#-----------------------------------------------
#-----------------------------------------------
#-----------------------------------------------
#-----------------------------------------------
#-------------Rook/Bishop/Queen--------------------
# will create a new file for all of these

#
# class Rook < Pieces
#
# end
#
# class Bishop < Pieces
#
# end
#
# class Queen < Pieces
#
# end
