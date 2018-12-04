module SlidingPiece
    # HORIZONTAL_DIRS = []
    # (0..7).each do |i|
    #     1.times do |j|
    #         HORIZONTAL_DIRS << [i,j]
    #     end
    # end

    # POSITIVE_HORIZONTAL = HORIZONTAL_DIRS
    # NEGATIVE_HORIZONTAL = HORIZONTAL_DIRS.map { |arr| [arr[0] * -1, arr[1]] }


    # VERTICAL_DIRS = []
    # (0..7).each do |i|
    #     1.times do |j|
    #         VERTICAL_DIRS << [j,i]
    #     end
    # end

    # POSITIVE_VERTICAL = VERTICAL_DIRS
    # NEGATIVE_VERTICAL = VERTICAL_DIRS.map { |arr| [arr[0] * -1, arr[1]] }


    # POSITIVE_DIAGONAL = []
    # NEGATIVE_DIAGONAL = []
    # (0..7).each do |i|
    #     POSITIVE_DIAGONAL << [i,i]
    #     NEGATIVE_DIAGONAL << [-i,-i]
    # end
    HORIZONTAL_DIRS = [[1,0],[-1,0],[0,1],[0,-1]]
    DIAGONAL_DIRS = [[1,1],[-1,-1]]

    def horizontal_dirs #(start_pos)
        # x, y = start_pos
        # @positive_diag = []
        # @negative_diag = []
        # POSITIVE_DIAGONALS.each do |ele|
        #     @positive_diag << [x + ele[0], y + ele[1]]
        # end
        # NEGATIVE_DIAGONALS.each do |ele|
        #     @negative_diag << [x + ele[0], y + ele[1]]
        # end
        

    end

    def vertical_dirs #(start_pos)
        # x, y = start_pos
        # moves_array = []

        # VERTICAL_DIRS.each do |ele|
        #     moves_array << [x + ele[0], y + ele[1]]
        # end
        # moves_array.uniq
    end


    def diagonal_dirs #(start_pos)
        # x, y = start_pos
        # moves_array = []

        # DIAGONAL_DIRS.each do |ele|
        #     moves_array << [x + ele[0], y + ele[1]]
        # end
        # moves_array.uniq
    end

    def moves
    #    move_dirs.select do |dir|
    #      if grow_unblocked_moves_in_dir

    end

    private
    attr_reader :horizontal_dirs, :diagonal_dirs
    def initialize
      
    end

   

    def grow_unblocked_moves_in_dir #(dx,dy)
        available_moves = []
        move_dirs.each do |dir|
            dir.each do |move|
                break if @board[move] != nil
                available_moves << move
            end
        end

        available_moves
    end

end

p straight_dirs([0,0])