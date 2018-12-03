require_relative "NullPiece"
require_relative "Piece"

class Board

    attr_reader :grid, :nullpiece
    def initialize(grid = Array.new(8){Array.new(8)})
        @grid = grid
        @nullpiece = NullPiece.new

    end

    def [](pos)
        x,y = pos
        grid[x][y]
    end

    def []=(pos,piece)
        x,y = pos
        grid[x][y] = piece
    end

    def populate_board
        @grid.each_with_index do |row, i|
            row.each do |col|
                if [0,1,6,7].include?(i)
                    grid[row][col] = Piece.new
                else
                    grid[row][col] = nullpiece
                end
            end
        end
    end

    def move_piece(start_pos, end_pos)
        if start_pos.nil?
            raise StandardError, "The piece is not in this position"
        elsif end_pos != nil
            #come back and fix this
            raise StandardError, "The piece cannot move here"
        end

        grid[start_pos], grid[end_pos] = self.nullpiece, grid[start_pos]
        piece = grid[end_pos]
        piece.current_pos = end_pos

    end
    
    def valid_pos?(pos)
        
    
    end




end