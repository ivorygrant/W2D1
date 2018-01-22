class Pieces
  def initialize(color, board, pos)
    @color = :color
    @board = Board
    @pos = []
  end

  def to_s

  end

  def empty?

  end

  def valid_moves

  end

  def pos=(val)

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
module Sideable
  def horizontal
    
  end

  def diagonal

  end
end

class Rook < Pieces

end

class Bishop < Pieces

end

class Queen < Pieces

end
