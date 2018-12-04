require_relative "SlidingPiece"

class Queen < Piece
    include SlidingPiece

    def initialize
        super
    end

    def symbol
        :Q
    end

    protected

    def move_dirs
        master = [diagonal_dirs(pos), vertical_dirs(pos), horizontal_dirs(pos)]
    end
end