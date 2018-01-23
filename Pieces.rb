

class Pieces
  attr_reader :pos, :color
  attr_writer :pos
  def initialize(color, pos)
    @color = color
    # @board = Board
    @pos = pos
  end

  def to_s
    "P"
  end

  def empty?

  end

  def valid_moves

  end

  def symbol

  end

  private

  def move_into_check?(end_pos)

  end
end

#-----------------------------------------------
#-----------------------------------------------
#-----------------------------------------------
#-----------------------------------------------
#-------------Rook/Bishop/Queen--------------------
# will create a new file for all of these
# module Sideable
#   def horizontal
#
#   end
#
#   def diagonal
#
#   end
# end
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
