require "io/console"
require_relative 'Board_chess.rb'
require 'colorize'

class OffBoardError < StandardError
  def message
    puts "Not on the board! FOOOOO!!"
  end
end

KEYMAP = {
  " " => :space,
  "h" => :left,
  "j" => :down,
  "k" => :up,
  "l" => :right,
  "w" => :up,
  "a" => :left,
  "s" => :down,
  "d" => :right,
  "\t" => :tab,
  "\r" => :return,
  "\n" => :newline,
  "\e" => :escape,
  "\e[A" => :up,
  "\e[B" => :down,
  "\e[C" => :right,
  "\e[D" => :left,
  "\177" => :backspace,
  "\004" => :delete,
  "\u0003" => :ctrl_c,
}

MOVES = {
  left: [0, -1],
  right: [0, 1],
  up: [-1, 0],
  down: [1, 0]
}

class Cursor

  attr_reader :cursor_pos, :board

  def initialize(cursor_pos, board)
    @cursor_pos = cursor_pos
    @board = board
  end

  def color
    :yellow
  end

  def get_input
    key = KEYMAP[read_char]
    handle_key(key)
  rescue OffBoardError => offboard
      puts offboard.message
      retry
  end

  #Render the square at the @cursor_pos display in a different color. Test that you can move your cursor around the board by creating and calling a method that loops through Display#render and Cursor#get_input (much as Player#make_move will function later!).

  def update_pos(diff)
    x, y = cursor_pos
    new_pos = [x + diff[0], y + diff[1]]
    if Board.valid_pos?(new_pos) #throwing error, undefined method. Do I need to pass differently? do I need a module? this was previously private
      @cursor_pos[0] += diff[0]
      @cursor_pos[1] += diff[1]
    else
      raise OffBoardError
    end


  end

  private

  def read_char
    STDIN.echo = false # stops the console from printing return values

    STDIN.raw! # in raw mode data is given as is to the program--the system
                 # doesn't preprocess special characters such as control-c

    input = STDIN.getc.chr # STDIN.getc reads a one-character string as a
                             # numeric keycode. chr returns a string of the
                             # character represented by the keycode.
                             # (e.g. 65.chr => "A")

    if input == "\e" then
      input << STDIN.read_nonblock(3) rescue nil # read_nonblock(maxlen) reads
                                                   # at most maxlen bytes from a
                                                   # data stream; it's nonblocking,
                                                   # meaning the method executes
                                                   # asynchronously; it raises an
                                                   # error if no data is available,
                                                   # hence the need for rescue

      input << STDIN.read_nonblock(2) rescue nil
    end

    STDIN.echo = true # the console prints return values again
    STDIN.cooked! # the opposite of raw mode :)

    return input
  end

  def handle_key(key)
    begin
      case key
        when :return, :space
          @cursor_pos
        when :left, :right, :up, :down
          update_pos(MOVES[key])
          return nil
        when :ctrl_c
          process.exit(0) #added the process with 0 as argument
      end

    end
  end


end

# MOVES = {
#   left: [0, -1],
#   right: [0, 1],
#   up: [-1, 0],
#   down: [1, 0]
# }
