require_relative "Board"
require "colorize"
require_relative "cursor"

class Display

    attr_reader :cursor

    def initialize(board)
        @cursor = Cursor.new([0,0], board)
        @board = board
    end 

    # def render(board)
    #     i=0
    #     while i < 3
    #         temp = @board[cursor_pos].to_s.colorize
    #         p temp
    #         cursor.get_input
    #         i += 1
    #     end
    # end

    def test
         i=0
        while i < 3
            cursor.get_input
            p @board
            i += 1
        end
    end

    
end