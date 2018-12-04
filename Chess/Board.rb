require_relative "NullPiece"
require_relative "Piece"

class Board

    attr_accessor :grid, :nullpiece, :piece
    def initialize(grid = Array.new(8){Array.new(8)})
        @grid = grid
        @nullpiece = NullPiece.instance
        # @piece = Piece.new
        populate_board
        ""
    end

    def [](pos)
        x, y = pos
        @grid[x][y]
    end

    def []=(pos, piece)
        x, y = pos
        @grid[x][y] = piece
    end

    def populate_board #should be a private method
        @grid.each_with_index do |row, i|
            row.each_index do |j|
                if [0,1,6,7].include?(i)
                  self[[i,j]] = Piece.new
                else
                    self[[i,j]] = @nullpiece
                end
            end
        end
    end

    def move_piece(start_pos, end_pos)
        if start_pos.nil?
            raise StandardError, "The piece is not in this position"
        # elsif end_pos != nil
        #     #come back and fix this
        #     raise StandardError, "The piece cannot move here"
        end

        self[start_pos], self[end_pos] = self.nullpiece, self[start_pos]
        piece = self[end_pos]
        #change when piece is instantiated
        # piece.current_pos = end_pos

    end
    
    def valid_pos?(pos)
        x , y = pos
        x.between?(0,7) && y.between?(0,7)    
    end

end