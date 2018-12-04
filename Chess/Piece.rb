require_relative "Board"
class Piece

    attr_accessors :color, :board, :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def empty?
       color.nil?
    end

    def valid_moves
        # x1, y1 = pos
        # x2, y2 = diff
        # new_pos = [(x1 + x2) % 8, (y1 + y2) % 8]
        # if valid_pos?(new_pos)
        #     @cursor_pos = new_pos
        # end


        # should check unblocked moves and move_into_check to filter out possible moves
    end

    def pos=(val)
        @board[pos] = val
    end

    def to_s
        symbol.to_s
    end

    def symbol
        @symbol = nil
    end

    private

    def move_into_check?
    end
end