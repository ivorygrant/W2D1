require_relative 'Pieces.rb'
require_relative 'Slideable.rb'

class Rook < Pieces
  include Slideable

  def initialize(color, pos)
    @color = color
    # @board = Board
    @pos = pos
  end

  def moves
    self.hori_vertical
  end
end

class Bishop < Pieces
  include Slideable

  def initialize(color, pos)
    @color = color
    # @board = Board
    @pos = pos
  end

  def moves
    self.diags
  end
end


class Queen < Pieces
  include Slideable

  def initialize(color, pos)
    @color = color
    # @board = Board
    @pos = pos
  end

  def moves
    self.diags + self.hori_vertical
  end

end
