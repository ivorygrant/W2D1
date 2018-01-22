require 'singleton'
require_relative 'Pieces.rb'

class NullPiece < Pieces

  include Singleton

  def initialize
    @color = :none
    @symbol = " "
  end

  def to_s
    @symbol
  end
end
