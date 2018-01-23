module Slideable
  HV = [
  [0, -1],
  [0, 1],
  [-1, 0],
  [1, 0]
  ]

  DIAGS = [
    [1, 1],
    [1, -1],
    [-1, -1],
    [-1, 1]
  ]

  def hori_vertical
    possible_hv = []
    HV.each do |delta|
      moving = false
      until moving
        moving = true
      start_pos = self.pos
      start_pos[0] += delta[0]
      start_pos[1] += delta[1]
        if start_pos.empty?
          possible_hv  << start_pos
          moving = false
        elsif self.pos.color == start_pos.color
          break
        elsif self.pos.color != start_pos.color
          possible_hv  << start_pos
          break
        else
          break
        end
      end

    end
    possible_hv
  end

  def diags
    possible_diags = []
    DIAGS.each do |delta|
      moving = false
      until moving
        moving = true
      start_pos = self.pos
      start_pos[0] += delta[0]
      start_pos[1] += delta[1]
        if start_pos.empty?
          possible_diags << start_pos
          moving = false
        elsif self.pos.color == start_pos.color
          moving = true
          break
        elsif self.pos.color != start_pos.color
          possible_diags << start_pos
          moving = true
          break
        else
          moving = true
          break
        end
      end

    end
    possible_diags
  end


end
