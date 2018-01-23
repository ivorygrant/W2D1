require_relative 'Board_chess.rb'
require 'colorize'
require_relative 'cursor.rb'
require_relative "Pieces.rb" #added this line

class Display
attr_reader :board, :cursor

  def initialize (board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    #find the square at the cursor position and set that a different color
    #also assign the colors of pieces
  #iterate through the board, alternate colors, if tile is odd/even. if cursor_pos then
    #setting the cursor position to yellow
    board.grid.each_with_index do |row, idx1|
      row.each_index do |idx2|
        pos = [idx1, idx2]
        tile = board[pos]
        if pos == cursor.cursor_pos
          print tile.to_s.colorize({color: :white, background: cursor.color})
        elsif idx1.even? && idx2.even? || idx1.odd? && idx2.odd?
          print tile.to_s.colorize({color: tile.color, background: :grey}) #make this green, incorrect
        else
          print tile.to_s.colorize({color: tile.color, background: :black})
        end

      end
      puts
    end
    return nil

  end
  #Render the square at the @cursor_pos display in a different color. Test that you can move your cursor around the board by creating and calling a method that loops through Display#render and Cursor#get_input (much as Player#make_move will function later!).
  #colors of pieces, if tile = cursor position

  def moving_cursor

    while true
      system("clear")
      render
      cursor.get_input
    end

  end




end
