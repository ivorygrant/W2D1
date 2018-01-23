module SteppingPiece
  KING_MOVES = [
  [0, -1],
  [0, 1],
  [-1, 0],
  [1, 0],
  [1, 1],
  [1, -1],
  [-1, -1],
  [-1, 1]
  ]

  KNIGHT_MOVES = [
    [1, -2],
    [2, -1],
    [2, 1],
    [1, 2],
    [-1, 2],
    [-2, 1],
    [-2, -1],
    [-1, -2]
  ]

  def kings_moves
    possible_km = []
    KING_MOVES.each do |delta|
      moving = false
      until moving
        moving = true
      start_pos = self.pos
      start_pos[0] += delta[0]
      start_pos[1] += delta[1]
        if start_pos.empty?
          possible_km << start_pos
          break
        elsif self.pos.color == start_pos.color
          break
        elsif self.pos.color != start_pos.color
          possible_km << start_pos
          break
        else
          break
        end
      end

    end
    possible_km
  end

  def knights_moves
    possible_knight = []

    KNIGHT_MOVES.each do |delta|
      moving = false
      
      until moving
        moving = true
      start_pos = self.pos
      start_pos[0] += delta[0]
      start_pos[1] += delta[1]
        if start_pos.empty?
          possible_knight << start_pos
          break
        elsif self.pos.color == start_pos.color
          break
        elsif self.pos.color != start_pos.color
          possible_knight << start_pos
          break
        else
          break
        end
      end

    end
    possible_knight
  end


end
